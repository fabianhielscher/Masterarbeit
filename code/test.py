#!/usr/bin/env python
#=========================================================================
#
#  Copyright Insight Software Consortium
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#         http://www.apache.org/licenses/LICENSE-2.0.txt
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#
#=========================================================================





import numpy as np

np.random.seed(seed=3)

# np.random.choice()




import SimpleITK as sitk
import Config
import matplotlib.pyplot as plt


def myshow(img, title=None, margin=0.05, dpi=80):
    nda = sitk.GetArrayViewFromImage(img)[0,:,:]
    spacing = img.GetSpacing()

    ysize = nda.shape[0]
    xsize = nda.shape[1]

    figsize = (1 + margin) * ysize / dpi, (1 + margin) * xsize / dpi

    fig = plt.figure(title, figsize=figsize, dpi=dpi)
    ax = fig.add_axes([margin, margin, 1 - 2 * margin, 1 - 2 * margin])

    extent = (0, xsize * spacing[1], 0, ysize * spacing[0])

    t = ax.imshow(nda,
                  extent=extent,
                  interpolation='hamming',
                  cmap='gray',
                  origin='lower')

    if (title):
        plt.title(title)

def applyTransform(img, transform, interpolator):
    return sitk.Resample(img, transform, interpolator)

# Load Image
reader = sitk.ImageFileReader()
# reader.SetImageIO("BMPImageIO")
reader.SetFileName(Config.path_moving)
img = reader.Execute()


dim = 2
# Create Transform
new_transform = sitk.AffineTransform(dim)
print(new_transform.GetParameters())

myshow(img)
sitk.Show(img)

# Change Transform
new_transform.SetParameters([1,1,1,1,1,1])
print(new_transform.GetParameters())

# Apply Transform
resampled = sitk.Resample(img, new_transform, sitk.sitkCosineWindowedSinc,100.0)

pass
# matrix = np.array(transform.GetMatrix()).reshape((dimension,dimension))
# matrix[0,0] = x_scale
# matrix[1,1] = y_scale



# Create an image
pixelType = sitk.sitkUInt8
imageSize = [128, 128]
image     = sitk.Image( imageSize, pixelType )


# Create a face image
faceSize   = [64, 64]
faceCenter = [64, 64]
face       = sitk.GaussianSource(pixelType, imageSize, faceSize, faceCenter)

# Create eye images
eyeSize    = [5, 5]
eye1Center = [48, 48]
eye2Center = [80, 48]
eye1       = sitk.GaussianSource(pixelType, imageSize, eyeSize, eye1Center, 150)
eye2       = sitk.GaussianSource(pixelType, imageSize, eyeSize, eye2Center, 150)

# Apply the eyes to the face
face = face - eye1 - eye2
face = sitk.BinaryThreshold(face, 200, 255, 255)

# Create the mouth
mouthRadii  = [30, 20]
mouthCenter = [64, 76]
mouth       = 255 - sitk.BinaryThreshold( sitk.GaussianSource(pixelType, imageSize, mouthRadii, mouthCenter),
                                          200, 255, 255 )
# Paste the mouth into the face
mouthSize = [64, 18]
mouthLoc  = [32, 76]
face      = sitk.Paste(face, mouth, mouthSize, mouthLoc, mouthLoc)

# Apply the face to the original image
image = image+face

# Display the results
sitk.Show( image, title="Hello World: Python", debugOn=True )