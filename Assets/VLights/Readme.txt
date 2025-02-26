Thanks for purchasing VLights volumetric lights.

**NOTE**
This package requires that you set a new layer called "vlight" in your scene to use the interleaved sampling effect.
The layer name can be changed by modifying VLightManager.cs VOLUMETRIC_LIGHT_LAYER_NAME variable.

**NOTE**
IF UPGRADING PLEASE REMOVE THE OLD VOLUME LIGHT MANAGER EDITOR SCRIPT. YOU WILL GET A COMPILER ERROR.
ALSO REMOVE THE EXPERIMENTAL FOLDER I WILL NO LONGER BE SUPPORTING THIS

Updates
08/06/2015
Added in curve based attenuation. 
Added in area volumes. 
Improved performance by removing update loop.
You can now bake shadow maps in the editor.
Complete redo of editor.
Fixed up some memory leaks with rendertextures.
Added in dithered sampling to improve qualty without post effects.
Refactored some code.

16/03/2015
Fixed some shader compiler errors in Unity 5. Added in some more context help.

03/03/2015
Unity 5.0 fixes

28/05/2014
Fixed 4.5 shader compiler errors

15/03/2014
Support for multiple cameras. Removed need for camera tags. Fixed some shader referencing bugs.

31/10/2013
dx11 shader fixes

25/9/2013
-Fixed memory leak on Unity 4.2. Optimised performance. Added in workaround to RenderPath.Vertexlit RenderWithShader crash bug on Unity.

1/8/2013 
-Fixed interleaved sampling in Unity 4.2.

25/7/2013 
-Cleaned up the material properties. 
-All shaders now use a version 2 of the shader. 
-This should automatically switch if you are upgrading.
-Fixed some null reference exceptions when upgrading.
-Fixed deferred rendering flag again:(

18/7/2013 This is a major update so I suggest backing up your project before upgrading.
-Option to turn off wireframe
-Improved blur using horizontal/vertical guassian blur. Blur steps are now in texel sizes
-Gave option to only use blur and not interleaved sampling
-Removed manual depth buffer
-All shaders are now only 2.0
-Cleaned up vlight editor
-All parameters except texture settings are done on the script
-Multi-editing is supported. Light manager editor is deprecated
-Lights can now be prefabs


23/4/2013 Fixed interleaved sampling posteffect when using skyboxes in 4.1 new renderwithshader.

14/4/2013 Fixed interleaved sampling again Unity 4.1 Set the depth flags using an OR flag to prevent messing with any other
depth effects. Also fixed cameras that have non-standard projection matricies.

17/3/2013 Fixed interleaved sampling in Unity 4.1. Seem like deferred rendering no longer support _CameraDepthTexture. 
Reverted to 3.5 as the min version.

9/12/2012 Compiler fixes for dx11

21/11/2012 Compiler fixes to unity 4.0

Compatible with linear and gamma space color in unity 3.5
Added in experimental section
Flickering fixed
Not necessary to use the bounding box hack.

VLights allows you to create realtime volumetric lights in Unity.
Simply click GameObject -> Create Other -> VLight type to create a new light.

For details on customizing your light click Help -> V-Lights

Visit 
http://vlights-system.blogspot.com/
for more information.

Support can be contacted at brianvlights@gmail.com
