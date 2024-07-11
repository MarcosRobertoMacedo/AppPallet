; ModuleID = 'obj\Debug\120\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\120\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [262 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 89
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 118
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 11
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 113
	i32 57967248, ; 4: Xamarin.Android.Support.VersionedParcelable.dll => 0x3748290 => 58
	i32 66706743, ; 5: Syncfusion.SfMaskedEdit.XForms.Android.dll => 0x3f9dd37 => 17
	i32 99762151, ; 6: Syncfusion.Buttons.XForms.dll => 0x5f23fe7 => 13
	i32 101534019, ; 7: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 103
	i32 120558881, ; 8: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 103
	i32 160529393, ; 9: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 26
	i32 165246403, ; 10: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 70
	i32 166922606, ; 11: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 37
	i32 182336117, ; 12: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 104
	i32 201930040, ; 13: Xamarin.Android.Arch.Core.Runtime => 0xc093538 => 27
	i32 209399409, ; 14: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 68
	i32 230216969, ; 15: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 84
	i32 232815796, ; 16: System.Web.Services => 0xde07cb4 => 129
	i32 261689757, ; 17: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 73
	i32 278686392, ; 18: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 88
	i32 280482487, ; 19: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 82
	i32 293914992, ; 20: Xamarin.Android.Support.Transition => 0x1184c970 => 53
	i32 318968648, ; 21: Xamarin.AndroidX.Activity.dll => 0x13031348 => 60
	i32 321597661, ; 22: System.Numerics => 0x132b30dd => 21
	i32 342366114, ; 23: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 86
	i32 388313361, ; 24: Xamarin.Android.Support.Animated.Vector.Drawable => 0x17253111 => 33
	i32 389606799, ; 25: Xfx.Controls.Droid => 0x1738ed8f => 120
	i32 389971796, ; 26: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 39
	i32 441335492, ; 27: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 72
	i32 442521989, ; 28: Xamarin.Essentials => 0x1a605985 => 112
	i32 450948140, ; 29: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 81
	i32 465846621, ; 30: mscorlib => 0x1bc4415d => 10
	i32 469710990, ; 31: System.dll => 0x1bff388e => 20
	i32 476646585, ; 32: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 82
	i32 486930444, ; 33: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 93
	i32 498788369, ; 34: System.ObjectModel => 0x1dbae811 => 4
	i32 514659665, ; 35: Xamarin.Android.Support.Compat => 0x1ead1551 => 37
	i32 524864063, ; 36: Xamarin.Android.Support.Print => 0x1f48ca3f => 50
	i32 526420162, ; 37: System.Transactions.dll => 0x1f6088c2 => 124
	i32 539750087, ; 38: Xamarin.Android.Support.Design => 0x202beec7 => 43
	i32 571524804, ; 39: Xamarin.Android.Support.v7.RecyclerView => 0x2210c6c4 => 56
	i32 605376203, ; 40: System.IO.Compression.FileSystem => 0x24154ecb => 127
	i32 627609679, ; 41: Xamarin.AndroidX.CustomView => 0x2568904f => 77
	i32 663517072, ; 42: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 109
	i32 666292255, ; 43: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 65
	i32 690569205, ; 44: System.Xml.Linq.dll => 0x29293ff5 => 25
	i32 692692150, ; 45: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 34
	i32 719061231, ; 46: Syncfusion.Core.XForms.dll => 0x2adc00ef => 15
	i32 775507847, ; 47: System.IO.Compression => 0x2e394f87 => 126
	i32 801787702, ; 48: Xamarin.Android.Support.Interpolator => 0x2fca4f36 => 47
	i32 809851609, ; 49: System.Drawing.Common.dll => 0x30455ad9 => 1
	i32 843511501, ; 50: Xamarin.AndroidX.Print => 0x3246f6cd => 100
	i32 864956750, ; 51: Syncfusion.SfMaskedEdit.XForms => 0x338e314e => 18
	i32 916714535, ; 52: Xamarin.Android.Support.Print.dll => 0x36a3f427 => 50
	i32 928116545, ; 53: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 118
	i32 955402788, ; 54: Newtonsoft.Json => 0x38f24a24 => 11
	i32 967690846, ; 55: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 86
	i32 974778368, ; 56: FormsViewGroup.dll => 0x3a19f000 => 7
	i32 987342438, ; 57: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0x3ad9a666 => 30
	i32 1012816738, ; 58: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 102
	i32 1035644815, ; 59: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 64
	i32 1042160112, ; 60: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 115
	i32 1052210849, ; 61: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 90
	i32 1071854640, ; 62: AppPallet => 0x3fe33430 => 6
	i32 1098167829, ; 63: Xamarin.Android.Arch.Lifecycle.ViewModel => 0x4174b615 => 32
	i32 1098259244, ; 64: System => 0x41761b2c => 20
	i32 1175144683, ; 65: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 107
	i32 1178241025, ; 66: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 97
	i32 1204270330, ; 67: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 65
	i32 1267360935, ; 68: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 108
	i32 1292763917, ; 69: Xamarin.Android.Support.CursorAdapter.dll => 0x4d0e030d => 41
	i32 1293217323, ; 70: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 79
	i32 1297413738, ; 71: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0x4d54f66a => 29
	i32 1350313759, ; 72: Xfx.Controls.dll => 0x507c271f => 119
	i32 1359785034, ; 73: Xamarin.Android.Support.Design.dll => 0x510cac4a => 43
	i32 1365406463, ; 74: System.ServiceModel.Internals.dll => 0x516272ff => 121
	i32 1376866003, ; 75: Xamarin.AndroidX.SavedState => 0x52114ed3 => 102
	i32 1395857551, ; 76: Xamarin.AndroidX.Media.dll => 0x5333188f => 94
	i32 1406073936, ; 77: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 74
	i32 1406198180, ; 78: AppPallet.Android => 0x53d0e1a4 => 0
	i32 1445445088, ; 79: Xamarin.Android.Support.Fragment => 0x5627bde0 => 46
	i32 1460219004, ; 80: Xamarin.Forms.Xaml => 0x57092c7c => 116
	i32 1462112819, ; 81: System.IO.Compression.dll => 0x57261233 => 126
	i32 1469204771, ; 82: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 63
	i32 1516315406, ; 83: Syncfusion.Core.XForms.Android.dll => 0x5a61230e => 14
	i32 1574652163, ; 84: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 40
	i32 1582372066, ; 85: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 78
	i32 1587447679, ; 86: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 26
	i32 1592978981, ; 87: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 88: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 92
	i32 1624863272, ; 89: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 111
	i32 1636350590, ; 90: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 76
	i32 1639515021, ; 91: System.Net.Http.dll => 0x61b9038d => 2
	i32 1657153582, ; 92: System.Runtime => 0x62c6282e => 23
	i32 1658241508, ; 93: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 105
	i32 1658251792, ; 94: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 117
	i32 1662014763, ; 95: Xamarin.Android.Support.Vector.Drawable => 0x6310552b => 57
	i32 1670060433, ; 96: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 73
	i32 1729485958, ; 97: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 69
	i32 1766324549, ; 98: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 104
	i32 1776026572, ; 99: System.Core.dll => 0x69dc03cc => 19
	i32 1788241197, ; 100: Xamarin.AndroidX.Fragment => 0x6a96652d => 81
	i32 1808609942, ; 101: Xamarin.AndroidX.Loader => 0x6bcd3296 => 92
	i32 1813201214, ; 102: Xamarin.Google.Android.Material => 0x6c13413e => 117
	i32 1818569960, ; 103: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 98
	i32 1841309220, ; 104: AppPallet.Android.dll => 0x6dc02624 => 0
	i32 1866717392, ; 105: Xamarin.Android.Support.Interpolator.dll => 0x6f43d8d0 => 47
	i32 1867746548, ; 106: Xamarin.Essentials.dll => 0x6f538cf4 => 112
	i32 1877418711, ; 107: Xamarin.Android.Support.v7.RecyclerView.dll => 0x6fe722d7 => 56
	i32 1878053835, ; 108: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 116
	i32 1885316902, ; 109: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 66
	i32 1916660109, ; 110: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x723de98d => 32
	i32 1919157823, ; 111: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 95
	i32 1978692816, ; 112: Xfx.Controls.Droid.dll => 0x75f074d0 => 120
	i32 2019465201, ; 113: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 90
	i32 2037417872, ; 114: Xamarin.Android.Support.ViewPager => 0x79708790 => 59
	i32 2044222327, ; 115: Xamarin.Android.Support.Loader => 0x79d85b77 => 48
	i32 2055257422, ; 116: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 87
	i32 2071563619, ; 117: Syncfusion.Buttons.XForms.Android => 0x7b798d63 => 12
	i32 2079903147, ; 118: System.Runtime.dll => 0x7bf8cdab => 23
	i32 2090596640, ; 119: System.Numerics.Vectors => 0x7c9bf920 => 22
	i32 2097448633, ; 120: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 83
	i32 2126786730, ; 121: Xamarin.Forms.Platform.Android => 0x7ec430aa => 114
	i32 2139458754, ; 122: Xamarin.Android.Support.DrawerLayout => 0x7f858cc2 => 45
	i32 2166116741, ; 123: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 40
	i32 2192674484, ; 124: Syncfusion.SfMaskedEdit.XForms.dll => 0x82b18eb4 => 18
	i32 2193016926, ; 125: System.ObjectModel.dll => 0x82b6c85e => 4
	i32 2196165013, ; 126: Xamarin.Android.Support.VersionedParcelable => 0x82e6d195 => 58
	i32 2201231467, ; 127: System.Net.Http => 0x8334206b => 2
	i32 2217644978, ; 128: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 107
	i32 2244775296, ; 129: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 93
	i32 2256548716, ; 130: Xamarin.AndroidX.MultiDex => 0x8680336c => 95
	i32 2261435625, ; 131: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 85
	i32 2279755925, ; 132: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 101
	i32 2315684594, ; 133: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 61
	i32 2330457430, ; 134: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 39
	i32 2330986192, ; 135: Xamarin.Android.Support.SlidingPaneLayout.dll => 0x8af006d0 => 51
	i32 2343171156, ; 136: Syncfusion.Core.XForms => 0x8ba9f454 => 15
	i32 2354730003, ; 137: Syncfusion.Licensing => 0x8c5a5413 => 16
	i32 2373288475, ; 138: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 46
	i32 2409053734, ; 139: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 99
	i32 2440966767, ; 140: Xamarin.Android.Support.Loader.dll => 0x917e326f => 48
	i32 2465532216, ; 141: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 72
	i32 2471841756, ; 142: netstandard.dll => 0x93554fdc => 122
	i32 2475788418, ; 143: Java.Interop.dll => 0x93918882 => 8
	i32 2487632829, ; 144: Xamarin.Android.Support.DocumentFile => 0x944643bd => 44
	i32 2501346920, ; 145: System.Data.DataSetExtensions => 0x95178668 => 125
	i32 2505896520, ; 146: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 89
	i32 2581819634, ; 147: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 108
	i32 2620871830, ; 148: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 76
	i32 2624644809, ; 149: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 80
	i32 2633051222, ; 150: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 88
	i32 2635300604, ; 151: Syncfusion.Buttons.XForms => 0x9d137efc => 13
	i32 2698266930, ; 152: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa0d44932 => 30
	i32 2701096212, ; 153: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 105
	i32 2732626843, ; 154: Xamarin.AndroidX.Activity => 0xa2e0939b => 60
	i32 2737747696, ; 155: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 63
	i32 2751899777, ; 156: Xamarin.Android.Support.Collections => 0xa406a881 => 36
	i32 2766581644, ; 157: Xamarin.Forms.Core => 0xa4e6af8c => 113
	i32 2778768386, ; 158: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 110
	i32 2788639665, ; 159: Xamarin.Android.Support.LocalBroadcastManager => 0xa63743b1 => 49
	i32 2788775637, ; 160: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0xa63956d5 => 52
	i32 2810250172, ; 161: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 74
	i32 2819470561, ; 162: System.Xml.dll => 0xa80db4e1 => 24
	i32 2853208004, ; 163: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 110
	i32 2855708567, ; 164: Xamarin.AndroidX.Transition => 0xaa36a797 => 106
	i32 2868557005, ; 165: Syncfusion.Licensing.dll => 0xaafab4cd => 16
	i32 2874148507, ; 166: Syncfusion.Core.XForms.Android => 0xab50069b => 14
	i32 2876493027, ; 167: Xamarin.Android.Support.SwipeRefreshLayout => 0xab73cce3 => 52
	i32 2893257763, ; 168: Xamarin.Android.Arch.Core.Runtime.dll => 0xac739c23 => 27
	i32 2903344695, ; 169: System.ComponentModel.Composition => 0xad0d8637 => 128
	i32 2905242038, ; 170: mscorlib.dll => 0xad2a79b6 => 10
	i32 2916838712, ; 171: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 111
	i32 2919462931, ; 172: System.Numerics.Vectors.dll => 0xae037813 => 22
	i32 2921128767, ; 173: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 62
	i32 2921692953, ; 174: Xamarin.Android.Support.CustomView.dll => 0xae257f19 => 42
	i32 2922925221, ; 175: Xamarin.Android.Support.Vector.Drawable.dll => 0xae384ca5 => 57
	i32 2978675010, ; 176: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 79
	i32 3017678341, ; 177: Syncfusion.SfMaskedEdit.XForms.Android => 0xb3de1e05 => 17
	i32 3024354802, ; 178: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 84
	i32 3037095496, ; 179: Xfx.Controls => 0xb5066648 => 119
	i32 3044182254, ; 180: FormsViewGroup => 0xb57288ee => 7
	i32 3056250942, ; 181: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0xb62ab03e => 35
	i32 3057625584, ; 182: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 96
	i32 3068715062, ; 183: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 28
	i32 3111772706, ; 184: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3204380047, ; 185: System.Data.dll => 0xbefef58f => 123
	i32 3204912593, ; 186: Xamarin.Android.Support.AsyncLayoutInflater => 0xbf0715d1 => 35
	i32 3211777861, ; 187: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 78
	i32 3220365878, ; 188: System.Threading => 0xbff2e236 => 5
	i32 3233339011, ; 189: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xc0b8d683 => 29
	i32 3247949154, ; 190: Mono.Security => 0xc197c562 => 130
	i32 3258312781, ; 191: Xamarin.AndroidX.CardView => 0xc235e84d => 69
	i32 3267021929, ; 192: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 67
	i32 3296380511, ; 193: Xamarin.Android.Support.Collections.dll => 0xc47ac65f => 36
	i32 3317135071, ; 194: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 77
	i32 3317144872, ; 195: System.Data => 0xc5b79d28 => 123
	i32 3321585405, ; 196: Xamarin.Android.Support.DocumentFile.dll => 0xc5fb5efd => 44
	i32 3340431453, ; 197: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 66
	i32 3346324047, ; 198: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 97
	i32 3352662376, ; 199: Xamarin.Android.Support.CoordinaterLayout => 0xc7d59168 => 38
	i32 3353484488, ; 200: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 83
	i32 3357663996, ; 201: Xamarin.Android.Support.CursorAdapter => 0xc821e2fc => 41
	i32 3362522851, ; 202: Xamarin.AndroidX.Core => 0xc86c06e3 => 75
	i32 3366347497, ; 203: Java.Interop => 0xc8a662e9 => 8
	i32 3374999561, ; 204: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 101
	i32 3404865022, ; 205: System.ServiceModel.Internals => 0xcaf21dfe => 121
	i32 3429136800, ; 206: System.Xml => 0xcc6479a0 => 24
	i32 3430777524, ; 207: netstandard => 0xcc7d82b4 => 122
	i32 3434749838, ; 208: Syncfusion.Buttons.XForms.Android.dll => 0xccba1f8e => 12
	i32 3439690031, ; 209: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 34
	i32 3441283291, ; 210: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 80
	i32 3476120550, ; 211: Mono.Android => 0xcf3163e6 => 9
	i32 3486566296, ; 212: System.Transactions => 0xcfd0c798 => 124
	i32 3493954962, ; 213: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 71
	i32 3498942916, ; 214: Xamarin.Android.Support.v7.CardView.dll => 0xd08da1c4 => 55
	i32 3501239056, ; 215: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 67
	i32 3509114376, ; 216: System.Xml.Linq => 0xd128d608 => 25
	i32 3536029504, ; 217: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 114
	i32 3547625832, ; 218: Xamarin.Android.Support.SlidingPaneLayout => 0xd3747968 => 51
	i32 3567349600, ; 219: System.ComponentModel.Composition.dll => 0xd4a16f60 => 128
	i32 3618140916, ; 220: Xamarin.AndroidX.Preference => 0xd7a872f4 => 99
	i32 3627220390, ; 221: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 100
	i32 3632359727, ; 222: Xamarin.Forms.Platform => 0xd881692f => 115
	i32 3633644679, ; 223: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 62
	i32 3641597786, ; 224: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 87
	i32 3664423555, ; 225: Xamarin.Android.Support.ViewPager.dll => 0xda6aaa83 => 59
	i32 3672681054, ; 226: Mono.Android.dll => 0xdae8aa5e => 9
	i32 3676310014, ; 227: System.Web.Services.dll => 0xdb2009fe => 129
	i32 3678221644, ; 228: Xamarin.Android.Support.v7.AppCompat => 0xdb3d354c => 54
	i32 3681174138, ; 229: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 28
	i32 3682565725, ; 230: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 68
	i32 3684561358, ; 231: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 71
	i32 3689375977, ; 232: System.Drawing.Common => 0xdbe768e9 => 1
	i32 3695434377, ; 233: AppPallet.dll => 0xdc43da89 => 6
	i32 3714038699, ; 234: Xamarin.Android.Support.LocalBroadcastManager.dll => 0xdd5fbbab => 49
	i32 3718463572, ; 235: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0xdda34054 => 33
	i32 3718780102, ; 236: Xamarin.AndroidX.Annotation => 0xdda814c6 => 61
	i32 3724971120, ; 237: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 96
	i32 3758932259, ; 238: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 85
	i32 3776062606, ; 239: Xamarin.Android.Support.DrawerLayout.dll => 0xe112248e => 45
	i32 3786282454, ; 240: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 70
	i32 3822602673, ; 241: Xamarin.AndroidX.Media => 0xe3d849b1 => 94
	i32 3829621856, ; 242: System.Numerics.dll => 0xe4436460 => 21
	i32 3832731800, ; 243: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe472d898 => 38
	i32 3862817207, ; 244: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 31
	i32 3874897629, ; 245: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 31
	i32 3883175360, ; 246: Xamarin.Android.Support.v7.AppCompat.dll => 0xe7748dc0 => 54
	i32 3885922214, ; 247: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 106
	i32 3896760992, ; 248: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 75
	i32 3920810846, ; 249: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 127
	i32 3921031405, ; 250: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 109
	i32 3931092270, ; 251: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 98
	i32 3945713374, ; 252: System.Data.DataSetExtensions.dll => 0xeb2ecede => 125
	i32 3955647286, ; 253: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 64
	i32 4063435586, ; 254: Xamarin.Android.Support.CustomView => 0xf2331b42 => 42
	i32 4073602200, ; 255: System.Threading.dll => 0xf2ce3c98 => 5
	i32 4105002889, ; 256: Mono.Security.dll => 0xf4ad5f89 => 130
	i32 4151237749, ; 257: System.Core => 0xf76edc75 => 19
	i32 4182413190, ; 258: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 91
	i32 4216993138, ; 259: Xamarin.Android.Support.Transition.dll => 0xfb5a3572 => 53
	i32 4219003402, ; 260: Xamarin.Android.Support.v7.CardView => 0xfb78e20a => 55
	i32 4292120959 ; 261: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 91
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [262 x i32] [
	i32 89, i32 118, i32 11, i32 113, i32 58, i32 17, i32 13, i32 103, ; 0..7
	i32 103, i32 26, i32 70, i32 37, i32 104, i32 27, i32 68, i32 84, ; 8..15
	i32 129, i32 73, i32 88, i32 82, i32 53, i32 60, i32 21, i32 86, ; 16..23
	i32 33, i32 120, i32 39, i32 72, i32 112, i32 81, i32 10, i32 20, ; 24..31
	i32 82, i32 93, i32 4, i32 37, i32 50, i32 124, i32 43, i32 56, ; 32..39
	i32 127, i32 77, i32 109, i32 65, i32 25, i32 34, i32 15, i32 126, ; 40..47
	i32 47, i32 1, i32 100, i32 18, i32 50, i32 118, i32 11, i32 86, ; 48..55
	i32 7, i32 30, i32 102, i32 64, i32 115, i32 90, i32 6, i32 32, ; 56..63
	i32 20, i32 107, i32 97, i32 65, i32 108, i32 41, i32 79, i32 29, ; 64..71
	i32 119, i32 43, i32 121, i32 102, i32 94, i32 74, i32 0, i32 46, ; 72..79
	i32 116, i32 126, i32 63, i32 14, i32 40, i32 78, i32 26, i32 3, ; 80..87
	i32 92, i32 111, i32 76, i32 2, i32 23, i32 105, i32 117, i32 57, ; 88..95
	i32 73, i32 69, i32 104, i32 19, i32 81, i32 92, i32 117, i32 98, ; 96..103
	i32 0, i32 47, i32 112, i32 56, i32 116, i32 66, i32 32, i32 95, ; 104..111
	i32 120, i32 90, i32 59, i32 48, i32 87, i32 12, i32 23, i32 22, ; 112..119
	i32 83, i32 114, i32 45, i32 40, i32 18, i32 4, i32 58, i32 2, ; 120..127
	i32 107, i32 93, i32 95, i32 85, i32 101, i32 61, i32 39, i32 51, ; 128..135
	i32 15, i32 16, i32 46, i32 99, i32 48, i32 72, i32 122, i32 8, ; 136..143
	i32 44, i32 125, i32 89, i32 108, i32 76, i32 80, i32 88, i32 13, ; 144..151
	i32 30, i32 105, i32 60, i32 63, i32 36, i32 113, i32 110, i32 49, ; 152..159
	i32 52, i32 74, i32 24, i32 110, i32 106, i32 16, i32 14, i32 52, ; 160..167
	i32 27, i32 128, i32 10, i32 111, i32 22, i32 62, i32 42, i32 57, ; 168..175
	i32 79, i32 17, i32 84, i32 119, i32 7, i32 35, i32 96, i32 28, ; 176..183
	i32 3, i32 123, i32 35, i32 78, i32 5, i32 29, i32 130, i32 69, ; 184..191
	i32 67, i32 36, i32 77, i32 123, i32 44, i32 66, i32 97, i32 38, ; 192..199
	i32 83, i32 41, i32 75, i32 8, i32 101, i32 121, i32 24, i32 122, ; 200..207
	i32 12, i32 34, i32 80, i32 9, i32 124, i32 71, i32 55, i32 67, ; 208..215
	i32 25, i32 114, i32 51, i32 128, i32 99, i32 100, i32 115, i32 62, ; 216..223
	i32 87, i32 59, i32 9, i32 129, i32 54, i32 28, i32 68, i32 71, ; 224..231
	i32 1, i32 6, i32 49, i32 33, i32 61, i32 96, i32 85, i32 45, ; 232..239
	i32 70, i32 94, i32 21, i32 38, i32 31, i32 31, i32 54, i32 106, ; 240..247
	i32 75, i32 127, i32 109, i32 98, i32 125, i32 64, i32 42, i32 5, ; 248..255
	i32 130, i32 19, i32 91, i32 53, i32 55, i32 91 ; 256..261
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
