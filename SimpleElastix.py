import SimpleITK as sitk


resultImage = sitk.Elastix(
    sitk.ReadImage('data/R2017025/bin_00.nii'),
    sitk.ReadImage('data/R2017025/bin_01.nii')
)

SimpleElastix = sitk.SimpleElastix()
SimpleElastix.SetFixedImage(fixedImage)
for atlasImage, atlasLabels in zip([atlasImage1, atlasImage2], [atlasLabel1, atlasLabel2]):
    SimpleElastix.SetMovingImage(sitk.ReadImage(atlasImage))
    SimpleElastix.Execute()
    resultLabels.push_back(Transformix(atlasLabel, SimpleElastix.GetTransformParameterMap()))
fixedLabel = sitk.LabelVoting(resultLabels)