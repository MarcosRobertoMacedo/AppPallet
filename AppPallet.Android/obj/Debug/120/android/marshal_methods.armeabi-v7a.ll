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
@assembly_image_cache_hashes = local_unnamed_addr constant [310 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 107
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 136
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 12
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 131
	i32 57967248, ; 4: Xamarin.Android.Support.VersionedParcelable.dll => 0x3748290 => 76
	i32 66706743, ; 5: Syncfusion.SfMaskedEdit.XForms.Android.dll => 0x3f9dd37 => 29
	i32 99762151, ; 6: Syncfusion.Buttons.XForms.dll => 0x5f23fe7 => 25
	i32 101534019, ; 7: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 121
	i32 120558881, ; 8: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 121
	i32 160529393, ; 9: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 44
	i32 165246403, ; 10: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 88
	i32 166922606, ; 11: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 55
	i32 182336117, ; 12: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 122
	i32 201930040, ; 13: Xamarin.Android.Arch.Core.Runtime => 0xc093538 => 45
	i32 202702780, ; 14: PCLExt.FileStorage => 0xc14ffbc => 14
	i32 209399409, ; 15: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 86
	i32 220171995, ; 16: System.Diagnostics.Debug => 0xd1f8edb => 147
	i32 230216969, ; 17: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 102
	i32 232815796, ; 18: System.Web.Services => 0xde07cb4 => 144
	i32 261689757, ; 19: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 91
	i32 278686392, ; 20: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 106
	i32 280482487, ; 21: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 100
	i32 293914992, ; 22: Xamarin.Android.Support.Transition => 0x1184c970 => 71
	i32 318968648, ; 23: Xamarin.AndroidX.Activity.dll => 0x13031348 => 78
	i32 321597661, ; 24: System.Numerics => 0x132b30dd => 38
	i32 342366114, ; 25: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 104
	i32 347068432, ; 26: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 22
	i32 385762202, ; 27: System.Memory.dll => 0x16fe439a => 37
	i32 388313361, ; 28: Xamarin.Android.Support.Animated.Vector.Drawable => 0x17253111 => 51
	i32 389971796, ; 29: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 57
	i32 441335492, ; 30: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 90
	i32 442521989, ; 31: Xamarin.Essentials => 0x1a605985 => 130
	i32 442565967, ; 32: System.Collections => 0x1a61054f => 148
	i32 450948140, ; 33: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 99
	i32 465846621, ; 34: mscorlib => 0x1bc4415d => 11
	i32 469710990, ; 35: System.dll => 0x1bff388e => 36
	i32 476646585, ; 36: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 100
	i32 486930444, ; 37: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 111
	i32 498788369, ; 38: System.ObjectModel => 0x1dbae811 => 152
	i32 514659665, ; 39: Xamarin.Android.Support.Compat => 0x1ead1551 => 55
	i32 524864063, ; 40: Xamarin.Android.Support.Print => 0x1f48ca3f => 68
	i32 525008092, ; 41: SkiaSharp.dll => 0x1f4afcdc => 16
	i32 526420162, ; 42: System.Transactions.dll => 0x1f6088c2 => 137
	i32 539750087, ; 43: Xamarin.Android.Support.Design => 0x202beec7 => 61
	i32 545304856, ; 44: System.Runtime.Extensions => 0x2080b118 => 153
	i32 555173402, ; 45: Syncfusion.SfPicker.XForms.Android => 0x2117461a => 32
	i32 571524804, ; 46: Xamarin.Android.Support.v7.RecyclerView => 0x2210c6c4 => 74
	i32 605376203, ; 47: System.IO.Compression.FileSystem => 0x24154ecb => 142
	i32 627609679, ; 48: Xamarin.AndroidX.CustomView => 0x2568904f => 95
	i32 663517072, ; 49: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 127
	i32 666292255, ; 50: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 83
	i32 690569205, ; 51: System.Xml.Linq.dll => 0x29293ff5 => 43
	i32 692692150, ; 52: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 52
	i32 719061231, ; 53: Syncfusion.Core.XForms.dll => 0x2adc00ef => 27
	i32 748832960, ; 54: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 20
	i32 775507847, ; 55: System.IO.Compression => 0x2e394f87 => 141
	i32 800472933, ; 56: SQLiteNetExtensionsAsync => 0x2fb63f65 => 19
	i32 801787702, ; 57: Xamarin.Android.Support.Interpolator => 0x2fca4f36 => 65
	i32 809851609, ; 58: System.Drawing.Common.dll => 0x30455ad9 => 3
	i32 843511501, ; 59: Xamarin.AndroidX.Print => 0x3246f6cd => 118
	i32 864956750, ; 60: Syncfusion.SfMaskedEdit.XForms => 0x338e314e => 30
	i32 902159924, ; 61: Rg.Plugins.Popup => 0x35c5de34 => 15
	i32 916714535, ; 62: Xamarin.Android.Support.Print.dll => 0x36a3f427 => 68
	i32 928116545, ; 63: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 136
	i32 955402788, ; 64: Newtonsoft.Json => 0x38f24a24 => 12
	i32 967690846, ; 65: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 104
	i32 974778368, ; 66: FormsViewGroup.dll => 0x3a19f000 => 8
	i32 987342438, ; 67: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0x3ad9a666 => 48
	i32 992768348, ; 68: System.Collections.dll => 0x3b2c715c => 148
	i32 1012816738, ; 69: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 120
	i32 1035644815, ; 70: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 82
	i32 1042160112, ; 71: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 133
	i32 1044663988, ; 72: System.Linq.Expressions.dll => 0x3e444eb4 => 149
	i32 1052210849, ; 73: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 108
	i32 1071854640, ; 74: AppPallet => 0x3fe33430 => 7
	i32 1098167829, ; 75: Xamarin.Android.Arch.Lifecycle.ViewModel => 0x4174b615 => 50
	i32 1098259244, ; 76: System => 0x41761b2c => 36
	i32 1175144683, ; 77: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 125
	i32 1178241025, ; 78: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 115
	i32 1204270330, ; 79: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 83
	i32 1267360935, ; 80: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 126
	i32 1292207520, ; 81: SQLitePCLRaw.core.dll => 0x4d0585a0 => 21
	i32 1292763917, ; 82: Xamarin.Android.Support.CursorAdapter.dll => 0x4d0e030d => 59
	i32 1293217323, ; 83: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 97
	i32 1297413738, ; 84: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0x4d54f66a => 47
	i32 1324164729, ; 85: System.Linq => 0x4eed2679 => 151
	i32 1359785034, ; 86: Xamarin.Android.Support.Design.dll => 0x510cac4a => 61
	i32 1364015309, ; 87: System.IO => 0x514d38cd => 145
	i32 1365406463, ; 88: System.ServiceModel.Internals.dll => 0x516272ff => 138
	i32 1376866003, ; 89: Xamarin.AndroidX.SavedState => 0x52114ed3 => 120
	i32 1379779777, ; 90: System.Resources.ResourceManager => 0x523dc4c1 => 1
	i32 1388842911, ; 91: PCLExt.FileStorage.Abstractions.dll => 0x52c80f9f => 13
	i32 1395857551, ; 92: Xamarin.AndroidX.Media.dll => 0x5333188f => 112
	i32 1406073936, ; 93: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 92
	i32 1406198180, ; 94: AppPallet.Android => 0x53d0e1a4 => 0
	i32 1411638395, ; 95: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 40
	i32 1445445088, ; 96: Xamarin.Android.Support.Fragment => 0x5627bde0 => 64
	i32 1457743152, ; 97: System.Runtime.Extensions.dll => 0x56e36530 => 153
	i32 1460219004, ; 98: Xamarin.Forms.Xaml => 0x57092c7c => 134
	i32 1462112819, ; 99: System.IO.Compression.dll => 0x57261233 => 141
	i32 1469204771, ; 100: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 81
	i32 1516315406, ; 101: Syncfusion.Core.XForms.Android.dll => 0x5a61230e => 26
	i32 1550322496, ; 102: System.Reflection.Extensions.dll => 0x5c680b40 => 2
	i32 1574652163, ; 103: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 58
	i32 1582372066, ; 104: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 96
	i32 1587447679, ; 105: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 44
	i32 1592978981, ; 106: System.Runtime.Serialization.dll => 0x5ef2ee25 => 6
	i32 1604451928, ; 107: SQLiteNetExtensions => 0x5fa1fe58 => 18
	i32 1622152042, ; 108: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 110
	i32 1624863272, ; 109: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 129
	i32 1636350590, ; 110: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 94
	i32 1639515021, ; 111: System.Net.Http.dll => 0x61b9038d => 5
	i32 1657153582, ; 112: System.Runtime => 0x62c6282e => 41
	i32 1658241508, ; 113: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 123
	i32 1658251792, ; 114: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 135
	i32 1662014763, ; 115: Xamarin.Android.Support.Vector.Drawable => 0x6310552b => 75
	i32 1666713512, ; 116: SQLiteNetExtensions.dll => 0x635807a8 => 18
	i32 1670060433, ; 117: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 91
	i32 1701541528, ; 118: System.Diagnostics.Debug.dll => 0x656b7698 => 147
	i32 1711441057, ; 119: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 22
	i32 1726116996, ; 120: System.Reflection.dll => 0x66e27484 => 150
	i32 1729485958, ; 121: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 87
	i32 1765942094, ; 122: System.Reflection.Extensions => 0x6942234e => 2
	i32 1766324549, ; 123: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 122
	i32 1776026572, ; 124: System.Core.dll => 0x69dc03cc => 35
	i32 1788241197, ; 125: Xamarin.AndroidX.Fragment => 0x6a96652d => 99
	i32 1808609942, ; 126: Xamarin.AndroidX.Loader => 0x6bcd3296 => 110
	i32 1813201214, ; 127: Xamarin.Google.Android.Material => 0x6c13413e => 135
	i32 1818569960, ; 128: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 116
	i32 1841309220, ; 129: AppPallet.Android.dll => 0x6dc02624 => 0
	i32 1858542181, ; 130: System.Linq.Expressions => 0x6ec71a65 => 149
	i32 1866717392, ; 131: Xamarin.Android.Support.Interpolator.dll => 0x6f43d8d0 => 65
	i32 1867746548, ; 132: Xamarin.Essentials.dll => 0x6f538cf4 => 130
	i32 1877418711, ; 133: Xamarin.Android.Support.v7.RecyclerView.dll => 0x6fe722d7 => 74
	i32 1878053835, ; 134: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 134
	i32 1885316902, ; 135: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 84
	i32 1900610850, ; 136: System.Resources.ResourceManager.dll => 0x71490522 => 1
	i32 1916660109, ; 137: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x723de98d => 50
	i32 1919157823, ; 138: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 113
	i32 1936121326, ; 139: Syncfusion.SfPicker.XForms.dll => 0x7366ddee => 33
	i32 2011961780, ; 140: System.Buffers.dll => 0x77ec19b4 => 34
	i32 2019465201, ; 141: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 108
	i32 2037417872, ; 142: Xamarin.Android.Support.ViewPager => 0x79708790 => 77
	i32 2044222327, ; 143: Xamarin.Android.Support.Loader => 0x79d85b77 => 66
	i32 2055257422, ; 144: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 105
	i32 2071563619, ; 145: Syncfusion.Buttons.XForms.Android => 0x7b798d63 => 24
	i32 2079903147, ; 146: System.Runtime.dll => 0x7bf8cdab => 41
	i32 2090596640, ; 147: System.Numerics.Vectors => 0x7c9bf920 => 39
	i32 2097448633, ; 148: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 101
	i32 2103459038, ; 149: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 23
	i32 2126786730, ; 150: Xamarin.Forms.Platform.Android => 0x7ec430aa => 132
	i32 2139458754, ; 151: Xamarin.Android.Support.DrawerLayout => 0x7f858cc2 => 63
	i32 2166116741, ; 152: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 58
	i32 2192674484, ; 153: Syncfusion.SfMaskedEdit.XForms.dll => 0x82b18eb4 => 30
	i32 2193016926, ; 154: System.ObjectModel.dll => 0x82b6c85e => 152
	i32 2196165013, ; 155: Xamarin.Android.Support.VersionedParcelable => 0x82e6d195 => 76
	i32 2201231467, ; 156: System.Net.Http => 0x8334206b => 5
	i32 2217644978, ; 157: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 125
	i32 2244775296, ; 158: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 111
	i32 2256548716, ; 159: Xamarin.AndroidX.MultiDex => 0x8680336c => 113
	i32 2261435625, ; 160: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 103
	i32 2272153315, ; 161: Syncfusion.SfPicker.Android.dll => 0x876e4ee3 => 31
	i32 2279755925, ; 162: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 119
	i32 2315684594, ; 163: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 79
	i32 2330457430, ; 164: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 57
	i32 2330986192, ; 165: Xamarin.Android.Support.SlidingPaneLayout.dll => 0x8af006d0 => 69
	i32 2343171156, ; 166: Syncfusion.Core.XForms => 0x8ba9f454 => 27
	i32 2354730003, ; 167: Syncfusion.Licensing => 0x8c5a5413 => 28
	i32 2373288475, ; 168: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 64
	i32 2409053734, ; 169: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 117
	i32 2440966767, ; 170: Xamarin.Android.Support.Loader.dll => 0x917e326f => 66
	i32 2465273461, ; 171: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 20
	i32 2465532216, ; 172: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 90
	i32 2471841756, ; 173: netstandard.dll => 0x93554fdc => 139
	i32 2475788418, ; 174: Java.Interop.dll => 0x93918882 => 9
	i32 2487632829, ; 175: Xamarin.Android.Support.DocumentFile => 0x944643bd => 62
	i32 2501346920, ; 176: System.Data.DataSetExtensions => 0x95178668 => 140
	i32 2505896520, ; 177: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 107
	i32 2581819634, ; 178: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 126
	i32 2620871830, ; 179: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 94
	i32 2624644809, ; 180: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 98
	i32 2633051222, ; 181: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 106
	i32 2635300604, ; 182: Syncfusion.Buttons.XForms => 0x9d137efc => 25
	i32 2693849962, ; 183: System.IO.dll => 0xa090e36a => 145
	i32 2698266930, ; 184: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa0d44932 => 48
	i32 2701096212, ; 185: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 123
	i32 2715334215, ; 186: System.Threading.Tasks.dll => 0xa1d8b647 => 146
	i32 2732626843, ; 187: Xamarin.AndroidX.Activity => 0xa2e0939b => 78
	i32 2737747696, ; 188: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 81
	i32 2751899777, ; 189: Xamarin.Android.Support.Collections => 0xa406a881 => 54
	i32 2766581644, ; 190: Xamarin.Forms.Core => 0xa4e6af8c => 131
	i32 2778768386, ; 191: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 128
	i32 2784016111, ; 192: Syncfusion.SfPicker.XForms => 0xa5f0b6ef => 33
	i32 2788639665, ; 193: Xamarin.Android.Support.LocalBroadcastManager => 0xa63743b1 => 67
	i32 2788775637, ; 194: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0xa63956d5 => 70
	i32 2810250172, ; 195: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 92
	i32 2819470561, ; 196: System.Xml.dll => 0xa80db4e1 => 42
	i32 2853208004, ; 197: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 128
	i32 2855708567, ; 198: Xamarin.AndroidX.Transition => 0xaa36a797 => 124
	i32 2861816565, ; 199: Rg.Plugins.Popup.dll => 0xaa93daf5 => 15
	i32 2868557005, ; 200: Syncfusion.Licensing.dll => 0xaafab4cd => 28
	i32 2874148507, ; 201: Syncfusion.Core.XForms.Android => 0xab50069b => 26
	i32 2876493027, ; 202: Xamarin.Android.Support.SwipeRefreshLayout => 0xab73cce3 => 70
	i32 2893257763, ; 203: Xamarin.Android.Arch.Core.Runtime.dll => 0xac739c23 => 45
	i32 2901442782, ; 204: System.Reflection => 0xacf080de => 150
	i32 2903344695, ; 205: System.ComponentModel.Composition => 0xad0d8637 => 143
	i32 2905242038, ; 206: mscorlib.dll => 0xad2a79b6 => 11
	i32 2916838712, ; 207: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 129
	i32 2919462931, ; 208: System.Numerics.Vectors.dll => 0xae037813 => 39
	i32 2921128767, ; 209: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 80
	i32 2921692953, ; 210: Xamarin.Android.Support.CustomView.dll => 0xae257f19 => 60
	i32 2922925221, ; 211: Xamarin.Android.Support.Vector.Drawable.dll => 0xae384ca5 => 75
	i32 2950047143, ; 212: PCLExt.FileStorage.dll => 0xafd625a7 => 14
	i32 2978675010, ; 213: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 97
	i32 3017678341, ; 214: Syncfusion.SfMaskedEdit.XForms.Android => 0xb3de1e05 => 29
	i32 3024354802, ; 215: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 102
	i32 3044182254, ; 216: FormsViewGroup => 0xb57288ee => 8
	i32 3056250942, ; 217: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0xb62ab03e => 53
	i32 3057625584, ; 218: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 114
	i32 3068715062, ; 219: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 46
	i32 3075834255, ; 220: System.Threading.Tasks => 0xb755818f => 146
	i32 3111772706, ; 221: System.Runtime.Serialization => 0xb979e222 => 6
	i32 3204380047, ; 222: System.Data.dll => 0xbefef58f => 4
	i32 3204912593, ; 223: Xamarin.Android.Support.AsyncLayoutInflater => 0xbf0715d1 => 53
	i32 3211777861, ; 224: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 96
	i32 3233339011, ; 225: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xc0b8d683 => 47
	i32 3247949154, ; 226: Mono.Security => 0xc197c562 => 154
	i32 3258312781, ; 227: Xamarin.AndroidX.CardView => 0xc235e84d => 87
	i32 3267021929, ; 228: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 85
	i32 3270722617, ; 229: Syncfusion.SfPicker.Android => 0xc2f34439 => 31
	i32 3286872994, ; 230: SQLite-net.dll => 0xc3e9b3a2 => 17
	i32 3296380511, ; 231: Xamarin.Android.Support.Collections.dll => 0xc47ac65f => 54
	i32 3317135071, ; 232: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 95
	i32 3317144872, ; 233: System.Data => 0xc5b79d28 => 4
	i32 3321585405, ; 234: Xamarin.Android.Support.DocumentFile.dll => 0xc5fb5efd => 62
	i32 3340387945, ; 235: SkiaSharp => 0xc71a4669 => 16
	i32 3340431453, ; 236: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 84
	i32 3346324047, ; 237: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 115
	i32 3352662376, ; 238: Xamarin.Android.Support.CoordinaterLayout => 0xc7d59168 => 56
	i32 3353484488, ; 239: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 101
	i32 3357663996, ; 240: Xamarin.Android.Support.CursorAdapter => 0xc821e2fc => 59
	i32 3360279109, ; 241: SQLitePCLRaw.core => 0xc849ca45 => 21
	i32 3362522851, ; 242: Xamarin.AndroidX.Core => 0xc86c06e3 => 93
	i32 3366347497, ; 243: Java.Interop => 0xc8a662e9 => 9
	i32 3374999561, ; 244: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 119
	i32 3395150330, ; 245: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 40
	i32 3404865022, ; 246: System.ServiceModel.Internals => 0xcaf21dfe => 138
	i32 3429136800, ; 247: System.Xml => 0xcc6479a0 => 42
	i32 3430777524, ; 248: netstandard => 0xcc7d82b4 => 139
	i32 3434749838, ; 249: Syncfusion.Buttons.XForms.Android.dll => 0xccba1f8e => 24
	i32 3439690031, ; 250: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 52
	i32 3441283291, ; 251: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 98
	i32 3476120550, ; 252: Mono.Android => 0xcf3163e6 => 10
	i32 3486566296, ; 253: System.Transactions => 0xcfd0c798 => 137
	i32 3493954962, ; 254: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 89
	i32 3498942916, ; 255: Xamarin.Android.Support.v7.CardView.dll => 0xd08da1c4 => 73
	i32 3501239056, ; 256: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 85
	i32 3509114376, ; 257: System.Xml.Linq => 0xd128d608 => 43
	i32 3536029504, ; 258: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 132
	i32 3547625832, ; 259: Xamarin.Android.Support.SlidingPaneLayout => 0xd3747968 => 69
	i32 3567349600, ; 260: System.ComponentModel.Composition.dll => 0xd4a16f60 => 143
	i32 3608519521, ; 261: System.Linq.dll => 0xd715a361 => 151
	i32 3618140916, ; 262: Xamarin.AndroidX.Preference => 0xd7a872f4 => 117
	i32 3627220390, ; 263: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 118
	i32 3632359727, ; 264: Xamarin.Forms.Platform => 0xd881692f => 133
	i32 3633644679, ; 265: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 80
	i32 3641597786, ; 266: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 105
	i32 3664423555, ; 267: Xamarin.Android.Support.ViewPager.dll => 0xda6aaa83 => 77
	i32 3672681054, ; 268: Mono.Android.dll => 0xdae8aa5e => 10
	i32 3676310014, ; 269: System.Web.Services.dll => 0xdb2009fe => 144
	i32 3678221644, ; 270: Xamarin.Android.Support.v7.AppCompat => 0xdb3d354c => 72
	i32 3681174138, ; 271: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 46
	i32 3682565725, ; 272: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 86
	i32 3684561358, ; 273: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 89
	i32 3689375977, ; 274: System.Drawing.Common => 0xdbe768e9 => 3
	i32 3695434377, ; 275: AppPallet.dll => 0xdc43da89 => 7
	i32 3714038699, ; 276: Xamarin.Android.Support.LocalBroadcastManager.dll => 0xdd5fbbab => 67
	i32 3718463572, ; 277: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0xdda34054 => 51
	i32 3718780102, ; 278: Xamarin.AndroidX.Annotation => 0xdda814c6 => 79
	i32 3724971120, ; 279: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 114
	i32 3754567612, ; 280: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 23
	i32 3758932259, ; 281: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 103
	i32 3776062606, ; 282: Xamarin.Android.Support.DrawerLayout.dll => 0xe112248e => 63
	i32 3786282454, ; 283: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 88
	i32 3822602673, ; 284: Xamarin.AndroidX.Media => 0xe3d849b1 => 112
	i32 3829621856, ; 285: System.Numerics.dll => 0xe4436460 => 38
	i32 3832731800, ; 286: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe472d898 => 56
	i32 3862817207, ; 287: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 49
	i32 3874897629, ; 288: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 49
	i32 3876362041, ; 289: SQLite-net => 0xe70c9739 => 17
	i32 3883175360, ; 290: Xamarin.Android.Support.v7.AppCompat.dll => 0xe7748dc0 => 72
	i32 3885922214, ; 291: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 124
	i32 3896760992, ; 292: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 93
	i32 3920810846, ; 293: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 142
	i32 3921031405, ; 294: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 127
	i32 3931092270, ; 295: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 116
	i32 3945713374, ; 296: System.Data.DataSetExtensions.dll => 0xeb2ecede => 140
	i32 3949143839, ; 297: Syncfusion.SfPicker.XForms.Android.dll => 0xeb63271f => 32
	i32 3955647286, ; 298: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 82
	i32 4025784931, ; 299: System.Memory => 0xeff49a63 => 37
	i32 4063435586, ; 300: Xamarin.Android.Support.CustomView => 0xf2331b42 => 60
	i32 4087494849, ; 301: SQLiteNetExtensionsAsync.dll => 0xf3a238c1 => 19
	i32 4105002889, ; 302: Mono.Security.dll => 0xf4ad5f89 => 154
	i32 4151237749, ; 303: System.Core => 0xf76edc75 => 35
	i32 4182413190, ; 304: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 109
	i32 4216993138, ; 305: Xamarin.Android.Support.Transition.dll => 0xfb5a3572 => 71
	i32 4219003402, ; 306: Xamarin.Android.Support.v7.CardView => 0xfb78e20a => 73
	i32 4232084532, ; 307: PCLExt.FileStorage.Abstractions => 0xfc407c34 => 13
	i32 4260525087, ; 308: System.Buffers => 0xfdf2741f => 34
	i32 4292120959 ; 309: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 109
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [310 x i32] [
	i32 107, i32 136, i32 12, i32 131, i32 76, i32 29, i32 25, i32 121, ; 0..7
	i32 121, i32 44, i32 88, i32 55, i32 122, i32 45, i32 14, i32 86, ; 8..15
	i32 147, i32 102, i32 144, i32 91, i32 106, i32 100, i32 71, i32 78, ; 16..23
	i32 38, i32 104, i32 22, i32 37, i32 51, i32 57, i32 90, i32 130, ; 24..31
	i32 148, i32 99, i32 11, i32 36, i32 100, i32 111, i32 152, i32 55, ; 32..39
	i32 68, i32 16, i32 137, i32 61, i32 153, i32 32, i32 74, i32 142, ; 40..47
	i32 95, i32 127, i32 83, i32 43, i32 52, i32 27, i32 20, i32 141, ; 48..55
	i32 19, i32 65, i32 3, i32 118, i32 30, i32 15, i32 68, i32 136, ; 56..63
	i32 12, i32 104, i32 8, i32 48, i32 148, i32 120, i32 82, i32 133, ; 64..71
	i32 149, i32 108, i32 7, i32 50, i32 36, i32 125, i32 115, i32 83, ; 72..79
	i32 126, i32 21, i32 59, i32 97, i32 47, i32 151, i32 61, i32 145, ; 80..87
	i32 138, i32 120, i32 1, i32 13, i32 112, i32 92, i32 0, i32 40, ; 88..95
	i32 64, i32 153, i32 134, i32 141, i32 81, i32 26, i32 2, i32 58, ; 96..103
	i32 96, i32 44, i32 6, i32 18, i32 110, i32 129, i32 94, i32 5, ; 104..111
	i32 41, i32 123, i32 135, i32 75, i32 18, i32 91, i32 147, i32 22, ; 112..119
	i32 150, i32 87, i32 2, i32 122, i32 35, i32 99, i32 110, i32 135, ; 120..127
	i32 116, i32 0, i32 149, i32 65, i32 130, i32 74, i32 134, i32 84, ; 128..135
	i32 1, i32 50, i32 113, i32 33, i32 34, i32 108, i32 77, i32 66, ; 136..143
	i32 105, i32 24, i32 41, i32 39, i32 101, i32 23, i32 132, i32 63, ; 144..151
	i32 58, i32 30, i32 152, i32 76, i32 5, i32 125, i32 111, i32 113, ; 152..159
	i32 103, i32 31, i32 119, i32 79, i32 57, i32 69, i32 27, i32 28, ; 160..167
	i32 64, i32 117, i32 66, i32 20, i32 90, i32 139, i32 9, i32 62, ; 168..175
	i32 140, i32 107, i32 126, i32 94, i32 98, i32 106, i32 25, i32 145, ; 176..183
	i32 48, i32 123, i32 146, i32 78, i32 81, i32 54, i32 131, i32 128, ; 184..191
	i32 33, i32 67, i32 70, i32 92, i32 42, i32 128, i32 124, i32 15, ; 192..199
	i32 28, i32 26, i32 70, i32 45, i32 150, i32 143, i32 11, i32 129, ; 200..207
	i32 39, i32 80, i32 60, i32 75, i32 14, i32 97, i32 29, i32 102, ; 208..215
	i32 8, i32 53, i32 114, i32 46, i32 146, i32 6, i32 4, i32 53, ; 216..223
	i32 96, i32 47, i32 154, i32 87, i32 85, i32 31, i32 17, i32 54, ; 224..231
	i32 95, i32 4, i32 62, i32 16, i32 84, i32 115, i32 56, i32 101, ; 232..239
	i32 59, i32 21, i32 93, i32 9, i32 119, i32 40, i32 138, i32 42, ; 240..247
	i32 139, i32 24, i32 52, i32 98, i32 10, i32 137, i32 89, i32 73, ; 248..255
	i32 85, i32 43, i32 132, i32 69, i32 143, i32 151, i32 117, i32 118, ; 256..263
	i32 133, i32 80, i32 105, i32 77, i32 10, i32 144, i32 72, i32 46, ; 264..271
	i32 86, i32 89, i32 3, i32 7, i32 67, i32 51, i32 79, i32 114, ; 272..279
	i32 23, i32 103, i32 63, i32 88, i32 112, i32 38, i32 56, i32 49, ; 280..287
	i32 49, i32 17, i32 72, i32 124, i32 93, i32 142, i32 127, i32 116, ; 288..295
	i32 140, i32 32, i32 82, i32 37, i32 60, i32 19, i32 154, i32 35, ; 296..303
	i32 109, i32 71, i32 73, i32 13, i32 34, i32 109 ; 304..309
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
