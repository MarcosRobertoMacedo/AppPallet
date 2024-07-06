; ModuleID = 'obj\Debug\120\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\120\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [258 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 87
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 116
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 11
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 111
	i32 57967248, ; 4: Xamarin.Android.Support.VersionedParcelable.dll => 0x3748290 => 56
	i32 66706743, ; 5: Syncfusion.SfMaskedEdit.XForms.Android.dll => 0x3f9dd37 => 15
	i32 101534019, ; 6: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 101
	i32 120558881, ; 7: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 101
	i32 160529393, ; 8: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 24
	i32 165246403, ; 9: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 68
	i32 166922606, ; 10: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 35
	i32 182336117, ; 11: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 102
	i32 201930040, ; 12: Xamarin.Android.Arch.Core.Runtime => 0xc093538 => 25
	i32 209399409, ; 13: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 66
	i32 230216969, ; 14: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 82
	i32 232815796, ; 15: System.Web.Services => 0xde07cb4 => 127
	i32 261689757, ; 16: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 71
	i32 278686392, ; 17: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 86
	i32 280482487, ; 18: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 80
	i32 293914992, ; 19: Xamarin.Android.Support.Transition => 0x1184c970 => 51
	i32 318968648, ; 20: Xamarin.AndroidX.Activity.dll => 0x13031348 => 58
	i32 321597661, ; 21: System.Numerics => 0x132b30dd => 19
	i32 342366114, ; 22: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 84
	i32 388313361, ; 23: Xamarin.Android.Support.Animated.Vector.Drawable => 0x17253111 => 31
	i32 389606799, ; 24: Xfx.Controls.Droid => 0x1738ed8f => 118
	i32 389971796, ; 25: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 37
	i32 441335492, ; 26: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 70
	i32 442521989, ; 27: Xamarin.Essentials => 0x1a605985 => 110
	i32 450948140, ; 28: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 79
	i32 465846621, ; 29: mscorlib => 0x1bc4415d => 10
	i32 469710990, ; 30: System.dll => 0x1bff388e => 18
	i32 476646585, ; 31: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 80
	i32 486930444, ; 32: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 91
	i32 498788369, ; 33: System.ObjectModel => 0x1dbae811 => 4
	i32 514659665, ; 34: Xamarin.Android.Support.Compat => 0x1ead1551 => 35
	i32 524864063, ; 35: Xamarin.Android.Support.Print => 0x1f48ca3f => 48
	i32 526420162, ; 36: System.Transactions.dll => 0x1f6088c2 => 122
	i32 539750087, ; 37: Xamarin.Android.Support.Design => 0x202beec7 => 41
	i32 571524804, ; 38: Xamarin.Android.Support.v7.RecyclerView => 0x2210c6c4 => 54
	i32 605376203, ; 39: System.IO.Compression.FileSystem => 0x24154ecb => 125
	i32 627609679, ; 40: Xamarin.AndroidX.CustomView => 0x2568904f => 75
	i32 663517072, ; 41: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 107
	i32 666292255, ; 42: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 63
	i32 690569205, ; 43: System.Xml.Linq.dll => 0x29293ff5 => 23
	i32 692692150, ; 44: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 32
	i32 719061231, ; 45: Syncfusion.Core.XForms.dll => 0x2adc00ef => 13
	i32 775507847, ; 46: System.IO.Compression => 0x2e394f87 => 124
	i32 801787702, ; 47: Xamarin.Android.Support.Interpolator => 0x2fca4f36 => 45
	i32 809851609, ; 48: System.Drawing.Common.dll => 0x30455ad9 => 1
	i32 843511501, ; 49: Xamarin.AndroidX.Print => 0x3246f6cd => 98
	i32 864956750, ; 50: Syncfusion.SfMaskedEdit.XForms => 0x338e314e => 16
	i32 916714535, ; 51: Xamarin.Android.Support.Print.dll => 0x36a3f427 => 48
	i32 928116545, ; 52: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 116
	i32 955402788, ; 53: Newtonsoft.Json => 0x38f24a24 => 11
	i32 967690846, ; 54: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 84
	i32 974778368, ; 55: FormsViewGroup.dll => 0x3a19f000 => 7
	i32 987342438, ; 56: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0x3ad9a666 => 28
	i32 1012816738, ; 57: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 100
	i32 1035644815, ; 58: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 62
	i32 1042160112, ; 59: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 113
	i32 1052210849, ; 60: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 88
	i32 1071854640, ; 61: AppPallet => 0x3fe33430 => 6
	i32 1098167829, ; 62: Xamarin.Android.Arch.Lifecycle.ViewModel => 0x4174b615 => 30
	i32 1098259244, ; 63: System => 0x41761b2c => 18
	i32 1175144683, ; 64: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 105
	i32 1178241025, ; 65: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 95
	i32 1204270330, ; 66: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 63
	i32 1267360935, ; 67: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 106
	i32 1292763917, ; 68: Xamarin.Android.Support.CursorAdapter.dll => 0x4d0e030d => 39
	i32 1293217323, ; 69: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 77
	i32 1297413738, ; 70: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0x4d54f66a => 27
	i32 1350313759, ; 71: Xfx.Controls.dll => 0x507c271f => 117
	i32 1359785034, ; 72: Xamarin.Android.Support.Design.dll => 0x510cac4a => 41
	i32 1365406463, ; 73: System.ServiceModel.Internals.dll => 0x516272ff => 119
	i32 1376866003, ; 74: Xamarin.AndroidX.SavedState => 0x52114ed3 => 100
	i32 1395857551, ; 75: Xamarin.AndroidX.Media.dll => 0x5333188f => 92
	i32 1406073936, ; 76: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 72
	i32 1406198180, ; 77: AppPallet.Android => 0x53d0e1a4 => 0
	i32 1445445088, ; 78: Xamarin.Android.Support.Fragment => 0x5627bde0 => 44
	i32 1460219004, ; 79: Xamarin.Forms.Xaml => 0x57092c7c => 114
	i32 1462112819, ; 80: System.IO.Compression.dll => 0x57261233 => 124
	i32 1469204771, ; 81: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 61
	i32 1516315406, ; 82: Syncfusion.Core.XForms.Android.dll => 0x5a61230e => 12
	i32 1574652163, ; 83: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 38
	i32 1582372066, ; 84: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 76
	i32 1587447679, ; 85: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 24
	i32 1592978981, ; 86: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 87: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 90
	i32 1624863272, ; 88: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 109
	i32 1636350590, ; 89: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 74
	i32 1639515021, ; 90: System.Net.Http.dll => 0x61b9038d => 2
	i32 1657153582, ; 91: System.Runtime => 0x62c6282e => 21
	i32 1658241508, ; 92: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 103
	i32 1658251792, ; 93: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 115
	i32 1662014763, ; 94: Xamarin.Android.Support.Vector.Drawable => 0x6310552b => 55
	i32 1670060433, ; 95: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 71
	i32 1729485958, ; 96: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 67
	i32 1766324549, ; 97: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 102
	i32 1776026572, ; 98: System.Core.dll => 0x69dc03cc => 17
	i32 1788241197, ; 99: Xamarin.AndroidX.Fragment => 0x6a96652d => 79
	i32 1808609942, ; 100: Xamarin.AndroidX.Loader => 0x6bcd3296 => 90
	i32 1813201214, ; 101: Xamarin.Google.Android.Material => 0x6c13413e => 115
	i32 1818569960, ; 102: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 96
	i32 1841309220, ; 103: AppPallet.Android.dll => 0x6dc02624 => 0
	i32 1866717392, ; 104: Xamarin.Android.Support.Interpolator.dll => 0x6f43d8d0 => 45
	i32 1867746548, ; 105: Xamarin.Essentials.dll => 0x6f538cf4 => 110
	i32 1877418711, ; 106: Xamarin.Android.Support.v7.RecyclerView.dll => 0x6fe722d7 => 54
	i32 1878053835, ; 107: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 114
	i32 1885316902, ; 108: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 64
	i32 1916660109, ; 109: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x723de98d => 30
	i32 1919157823, ; 110: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 93
	i32 1978692816, ; 111: Xfx.Controls.Droid.dll => 0x75f074d0 => 118
	i32 2019465201, ; 112: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 88
	i32 2037417872, ; 113: Xamarin.Android.Support.ViewPager => 0x79708790 => 57
	i32 2044222327, ; 114: Xamarin.Android.Support.Loader => 0x79d85b77 => 46
	i32 2055257422, ; 115: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 85
	i32 2079903147, ; 116: System.Runtime.dll => 0x7bf8cdab => 21
	i32 2090596640, ; 117: System.Numerics.Vectors => 0x7c9bf920 => 20
	i32 2097448633, ; 118: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 81
	i32 2126786730, ; 119: Xamarin.Forms.Platform.Android => 0x7ec430aa => 112
	i32 2139458754, ; 120: Xamarin.Android.Support.DrawerLayout => 0x7f858cc2 => 43
	i32 2166116741, ; 121: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 38
	i32 2192674484, ; 122: Syncfusion.SfMaskedEdit.XForms.dll => 0x82b18eb4 => 16
	i32 2193016926, ; 123: System.ObjectModel.dll => 0x82b6c85e => 4
	i32 2196165013, ; 124: Xamarin.Android.Support.VersionedParcelable => 0x82e6d195 => 56
	i32 2201231467, ; 125: System.Net.Http => 0x8334206b => 2
	i32 2217644978, ; 126: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 105
	i32 2244775296, ; 127: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 91
	i32 2256548716, ; 128: Xamarin.AndroidX.MultiDex => 0x8680336c => 93
	i32 2261435625, ; 129: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 83
	i32 2279755925, ; 130: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 99
	i32 2315684594, ; 131: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 59
	i32 2330457430, ; 132: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 37
	i32 2330986192, ; 133: Xamarin.Android.Support.SlidingPaneLayout.dll => 0x8af006d0 => 49
	i32 2343171156, ; 134: Syncfusion.Core.XForms => 0x8ba9f454 => 13
	i32 2354730003, ; 135: Syncfusion.Licensing => 0x8c5a5413 => 14
	i32 2373288475, ; 136: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 44
	i32 2409053734, ; 137: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 97
	i32 2440966767, ; 138: Xamarin.Android.Support.Loader.dll => 0x917e326f => 46
	i32 2465532216, ; 139: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 70
	i32 2471841756, ; 140: netstandard.dll => 0x93554fdc => 120
	i32 2475788418, ; 141: Java.Interop.dll => 0x93918882 => 8
	i32 2487632829, ; 142: Xamarin.Android.Support.DocumentFile => 0x944643bd => 42
	i32 2501346920, ; 143: System.Data.DataSetExtensions => 0x95178668 => 123
	i32 2505896520, ; 144: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 87
	i32 2581819634, ; 145: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 106
	i32 2620871830, ; 146: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 74
	i32 2624644809, ; 147: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 78
	i32 2633051222, ; 148: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 86
	i32 2698266930, ; 149: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa0d44932 => 28
	i32 2701096212, ; 150: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 103
	i32 2732626843, ; 151: Xamarin.AndroidX.Activity => 0xa2e0939b => 58
	i32 2737747696, ; 152: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 61
	i32 2751899777, ; 153: Xamarin.Android.Support.Collections => 0xa406a881 => 34
	i32 2766581644, ; 154: Xamarin.Forms.Core => 0xa4e6af8c => 111
	i32 2778768386, ; 155: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 108
	i32 2788639665, ; 156: Xamarin.Android.Support.LocalBroadcastManager => 0xa63743b1 => 47
	i32 2788775637, ; 157: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0xa63956d5 => 50
	i32 2810250172, ; 158: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 72
	i32 2819470561, ; 159: System.Xml.dll => 0xa80db4e1 => 22
	i32 2853208004, ; 160: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 108
	i32 2855708567, ; 161: Xamarin.AndroidX.Transition => 0xaa36a797 => 104
	i32 2868557005, ; 162: Syncfusion.Licensing.dll => 0xaafab4cd => 14
	i32 2874148507, ; 163: Syncfusion.Core.XForms.Android => 0xab50069b => 12
	i32 2876493027, ; 164: Xamarin.Android.Support.SwipeRefreshLayout => 0xab73cce3 => 50
	i32 2893257763, ; 165: Xamarin.Android.Arch.Core.Runtime.dll => 0xac739c23 => 25
	i32 2903344695, ; 166: System.ComponentModel.Composition => 0xad0d8637 => 126
	i32 2905242038, ; 167: mscorlib.dll => 0xad2a79b6 => 10
	i32 2916838712, ; 168: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 109
	i32 2919462931, ; 169: System.Numerics.Vectors.dll => 0xae037813 => 20
	i32 2921128767, ; 170: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 60
	i32 2921692953, ; 171: Xamarin.Android.Support.CustomView.dll => 0xae257f19 => 40
	i32 2922925221, ; 172: Xamarin.Android.Support.Vector.Drawable.dll => 0xae384ca5 => 55
	i32 2978675010, ; 173: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 77
	i32 3017678341, ; 174: Syncfusion.SfMaskedEdit.XForms.Android => 0xb3de1e05 => 15
	i32 3024354802, ; 175: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 82
	i32 3037095496, ; 176: Xfx.Controls => 0xb5066648 => 117
	i32 3044182254, ; 177: FormsViewGroup => 0xb57288ee => 7
	i32 3056250942, ; 178: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0xb62ab03e => 33
	i32 3057625584, ; 179: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 94
	i32 3068715062, ; 180: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 26
	i32 3111772706, ; 181: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3204380047, ; 182: System.Data.dll => 0xbefef58f => 121
	i32 3204912593, ; 183: Xamarin.Android.Support.AsyncLayoutInflater => 0xbf0715d1 => 33
	i32 3211777861, ; 184: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 76
	i32 3220365878, ; 185: System.Threading => 0xbff2e236 => 5
	i32 3233339011, ; 186: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xc0b8d683 => 27
	i32 3247949154, ; 187: Mono.Security => 0xc197c562 => 128
	i32 3258312781, ; 188: Xamarin.AndroidX.CardView => 0xc235e84d => 67
	i32 3267021929, ; 189: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 65
	i32 3296380511, ; 190: Xamarin.Android.Support.Collections.dll => 0xc47ac65f => 34
	i32 3317135071, ; 191: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 75
	i32 3317144872, ; 192: System.Data => 0xc5b79d28 => 121
	i32 3321585405, ; 193: Xamarin.Android.Support.DocumentFile.dll => 0xc5fb5efd => 42
	i32 3340431453, ; 194: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 64
	i32 3346324047, ; 195: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 95
	i32 3352662376, ; 196: Xamarin.Android.Support.CoordinaterLayout => 0xc7d59168 => 36
	i32 3353484488, ; 197: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 81
	i32 3357663996, ; 198: Xamarin.Android.Support.CursorAdapter => 0xc821e2fc => 39
	i32 3362522851, ; 199: Xamarin.AndroidX.Core => 0xc86c06e3 => 73
	i32 3366347497, ; 200: Java.Interop => 0xc8a662e9 => 8
	i32 3374999561, ; 201: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 99
	i32 3404865022, ; 202: System.ServiceModel.Internals => 0xcaf21dfe => 119
	i32 3429136800, ; 203: System.Xml => 0xcc6479a0 => 22
	i32 3430777524, ; 204: netstandard => 0xcc7d82b4 => 120
	i32 3439690031, ; 205: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 32
	i32 3441283291, ; 206: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 78
	i32 3476120550, ; 207: Mono.Android => 0xcf3163e6 => 9
	i32 3486566296, ; 208: System.Transactions => 0xcfd0c798 => 122
	i32 3493954962, ; 209: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 69
	i32 3498942916, ; 210: Xamarin.Android.Support.v7.CardView.dll => 0xd08da1c4 => 53
	i32 3501239056, ; 211: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 65
	i32 3509114376, ; 212: System.Xml.Linq => 0xd128d608 => 23
	i32 3536029504, ; 213: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 112
	i32 3547625832, ; 214: Xamarin.Android.Support.SlidingPaneLayout => 0xd3747968 => 49
	i32 3567349600, ; 215: System.ComponentModel.Composition.dll => 0xd4a16f60 => 126
	i32 3618140916, ; 216: Xamarin.AndroidX.Preference => 0xd7a872f4 => 97
	i32 3627220390, ; 217: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 98
	i32 3632359727, ; 218: Xamarin.Forms.Platform => 0xd881692f => 113
	i32 3633644679, ; 219: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 60
	i32 3641597786, ; 220: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 85
	i32 3664423555, ; 221: Xamarin.Android.Support.ViewPager.dll => 0xda6aaa83 => 57
	i32 3672681054, ; 222: Mono.Android.dll => 0xdae8aa5e => 9
	i32 3676310014, ; 223: System.Web.Services.dll => 0xdb2009fe => 127
	i32 3678221644, ; 224: Xamarin.Android.Support.v7.AppCompat => 0xdb3d354c => 52
	i32 3681174138, ; 225: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 26
	i32 3682565725, ; 226: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 66
	i32 3684561358, ; 227: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 69
	i32 3689375977, ; 228: System.Drawing.Common => 0xdbe768e9 => 1
	i32 3695434377, ; 229: AppPallet.dll => 0xdc43da89 => 6
	i32 3714038699, ; 230: Xamarin.Android.Support.LocalBroadcastManager.dll => 0xdd5fbbab => 47
	i32 3718463572, ; 231: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0xdda34054 => 31
	i32 3718780102, ; 232: Xamarin.AndroidX.Annotation => 0xdda814c6 => 59
	i32 3724971120, ; 233: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 94
	i32 3758932259, ; 234: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 83
	i32 3776062606, ; 235: Xamarin.Android.Support.DrawerLayout.dll => 0xe112248e => 43
	i32 3786282454, ; 236: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 68
	i32 3822602673, ; 237: Xamarin.AndroidX.Media => 0xe3d849b1 => 92
	i32 3829621856, ; 238: System.Numerics.dll => 0xe4436460 => 19
	i32 3832731800, ; 239: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe472d898 => 36
	i32 3862817207, ; 240: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 29
	i32 3874897629, ; 241: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 29
	i32 3883175360, ; 242: Xamarin.Android.Support.v7.AppCompat.dll => 0xe7748dc0 => 52
	i32 3885922214, ; 243: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 104
	i32 3896760992, ; 244: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 73
	i32 3920810846, ; 245: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 125
	i32 3921031405, ; 246: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 107
	i32 3931092270, ; 247: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 96
	i32 3945713374, ; 248: System.Data.DataSetExtensions.dll => 0xeb2ecede => 123
	i32 3955647286, ; 249: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 62
	i32 4063435586, ; 250: Xamarin.Android.Support.CustomView => 0xf2331b42 => 40
	i32 4073602200, ; 251: System.Threading.dll => 0xf2ce3c98 => 5
	i32 4105002889, ; 252: Mono.Security.dll => 0xf4ad5f89 => 128
	i32 4151237749, ; 253: System.Core => 0xf76edc75 => 17
	i32 4182413190, ; 254: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 89
	i32 4216993138, ; 255: Xamarin.Android.Support.Transition.dll => 0xfb5a3572 => 51
	i32 4219003402, ; 256: Xamarin.Android.Support.v7.CardView => 0xfb78e20a => 53
	i32 4292120959 ; 257: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 89
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [258 x i32] [
	i32 87, i32 116, i32 11, i32 111, i32 56, i32 15, i32 101, i32 101, ; 0..7
	i32 24, i32 68, i32 35, i32 102, i32 25, i32 66, i32 82, i32 127, ; 8..15
	i32 71, i32 86, i32 80, i32 51, i32 58, i32 19, i32 84, i32 31, ; 16..23
	i32 118, i32 37, i32 70, i32 110, i32 79, i32 10, i32 18, i32 80, ; 24..31
	i32 91, i32 4, i32 35, i32 48, i32 122, i32 41, i32 54, i32 125, ; 32..39
	i32 75, i32 107, i32 63, i32 23, i32 32, i32 13, i32 124, i32 45, ; 40..47
	i32 1, i32 98, i32 16, i32 48, i32 116, i32 11, i32 84, i32 7, ; 48..55
	i32 28, i32 100, i32 62, i32 113, i32 88, i32 6, i32 30, i32 18, ; 56..63
	i32 105, i32 95, i32 63, i32 106, i32 39, i32 77, i32 27, i32 117, ; 64..71
	i32 41, i32 119, i32 100, i32 92, i32 72, i32 0, i32 44, i32 114, ; 72..79
	i32 124, i32 61, i32 12, i32 38, i32 76, i32 24, i32 3, i32 90, ; 80..87
	i32 109, i32 74, i32 2, i32 21, i32 103, i32 115, i32 55, i32 71, ; 88..95
	i32 67, i32 102, i32 17, i32 79, i32 90, i32 115, i32 96, i32 0, ; 96..103
	i32 45, i32 110, i32 54, i32 114, i32 64, i32 30, i32 93, i32 118, ; 104..111
	i32 88, i32 57, i32 46, i32 85, i32 21, i32 20, i32 81, i32 112, ; 112..119
	i32 43, i32 38, i32 16, i32 4, i32 56, i32 2, i32 105, i32 91, ; 120..127
	i32 93, i32 83, i32 99, i32 59, i32 37, i32 49, i32 13, i32 14, ; 128..135
	i32 44, i32 97, i32 46, i32 70, i32 120, i32 8, i32 42, i32 123, ; 136..143
	i32 87, i32 106, i32 74, i32 78, i32 86, i32 28, i32 103, i32 58, ; 144..151
	i32 61, i32 34, i32 111, i32 108, i32 47, i32 50, i32 72, i32 22, ; 152..159
	i32 108, i32 104, i32 14, i32 12, i32 50, i32 25, i32 126, i32 10, ; 160..167
	i32 109, i32 20, i32 60, i32 40, i32 55, i32 77, i32 15, i32 82, ; 168..175
	i32 117, i32 7, i32 33, i32 94, i32 26, i32 3, i32 121, i32 33, ; 176..183
	i32 76, i32 5, i32 27, i32 128, i32 67, i32 65, i32 34, i32 75, ; 184..191
	i32 121, i32 42, i32 64, i32 95, i32 36, i32 81, i32 39, i32 73, ; 192..199
	i32 8, i32 99, i32 119, i32 22, i32 120, i32 32, i32 78, i32 9, ; 200..207
	i32 122, i32 69, i32 53, i32 65, i32 23, i32 112, i32 49, i32 126, ; 208..215
	i32 97, i32 98, i32 113, i32 60, i32 85, i32 57, i32 9, i32 127, ; 216..223
	i32 52, i32 26, i32 66, i32 69, i32 1, i32 6, i32 47, i32 31, ; 224..231
	i32 59, i32 94, i32 83, i32 43, i32 68, i32 92, i32 19, i32 36, ; 232..239
	i32 29, i32 29, i32 52, i32 104, i32 73, i32 125, i32 107, i32 96, ; 240..247
	i32 123, i32 62, i32 40, i32 5, i32 128, i32 17, i32 89, i32 51, ; 248..255
	i32 53, i32 89 ; 256..257
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
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


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
