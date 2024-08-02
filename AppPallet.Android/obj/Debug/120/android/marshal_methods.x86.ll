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
@assembly_image_cache_hashes = local_unnamed_addr constant [308 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 106
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 135
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 12
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 130
	i32 57967248, ; 4: Xamarin.Android.Support.VersionedParcelable.dll => 0x3748290 => 75
	i32 66706743, ; 5: Syncfusion.SfMaskedEdit.XForms.Android.dll => 0x3f9dd37 => 28
	i32 99762151, ; 6: Syncfusion.Buttons.XForms.dll => 0x5f23fe7 => 24
	i32 101534019, ; 7: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 120
	i32 120558881, ; 8: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 120
	i32 160529393, ; 9: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 43
	i32 165246403, ; 10: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 87
	i32 166922606, ; 11: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 54
	i32 182336117, ; 12: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 121
	i32 201930040, ; 13: Xamarin.Android.Arch.Core.Runtime => 0xc093538 => 44
	i32 202702780, ; 14: PCLExt.FileStorage => 0xc14ffbc => 14
	i32 209399409, ; 15: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 85
	i32 220171995, ; 16: System.Diagnostics.Debug => 0xd1f8edb => 146
	i32 230216969, ; 17: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 101
	i32 232815796, ; 18: System.Web.Services => 0xde07cb4 => 143
	i32 261689757, ; 19: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 90
	i32 278686392, ; 20: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 105
	i32 280482487, ; 21: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 99
	i32 293914992, ; 22: Xamarin.Android.Support.Transition => 0x1184c970 => 70
	i32 318968648, ; 23: Xamarin.AndroidX.Activity.dll => 0x13031348 => 77
	i32 321597661, ; 24: System.Numerics => 0x132b30dd => 37
	i32 342366114, ; 25: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 103
	i32 347068432, ; 26: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 21
	i32 385762202, ; 27: System.Memory.dll => 0x16fe439a => 36
	i32 388313361, ; 28: Xamarin.Android.Support.Animated.Vector.Drawable => 0x17253111 => 50
	i32 389971796, ; 29: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 56
	i32 441335492, ; 30: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 89
	i32 442521989, ; 31: Xamarin.Essentials => 0x1a605985 => 129
	i32 442565967, ; 32: System.Collections => 0x1a61054f => 147
	i32 450948140, ; 33: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 98
	i32 465846621, ; 34: mscorlib => 0x1bc4415d => 11
	i32 469710990, ; 35: System.dll => 0x1bff388e => 35
	i32 476646585, ; 36: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 99
	i32 486930444, ; 37: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 110
	i32 498788369, ; 38: System.ObjectModel => 0x1dbae811 => 151
	i32 514659665, ; 39: Xamarin.Android.Support.Compat => 0x1ead1551 => 54
	i32 524864063, ; 40: Xamarin.Android.Support.Print => 0x1f48ca3f => 67
	i32 526420162, ; 41: System.Transactions.dll => 0x1f6088c2 => 136
	i32 539750087, ; 42: Xamarin.Android.Support.Design => 0x202beec7 => 60
	i32 545304856, ; 43: System.Runtime.Extensions => 0x2080b118 => 152
	i32 555173402, ; 44: Syncfusion.SfPicker.XForms.Android => 0x2117461a => 31
	i32 571524804, ; 45: Xamarin.Android.Support.v7.RecyclerView => 0x2210c6c4 => 73
	i32 605376203, ; 46: System.IO.Compression.FileSystem => 0x24154ecb => 141
	i32 627609679, ; 47: Xamarin.AndroidX.CustomView => 0x2568904f => 94
	i32 663517072, ; 48: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 126
	i32 666292255, ; 49: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 82
	i32 690569205, ; 50: System.Xml.Linq.dll => 0x29293ff5 => 42
	i32 692692150, ; 51: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 51
	i32 719061231, ; 52: Syncfusion.Core.XForms.dll => 0x2adc00ef => 26
	i32 748832960, ; 53: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 19
	i32 775507847, ; 54: System.IO.Compression => 0x2e394f87 => 140
	i32 800472933, ; 55: SQLiteNetExtensionsAsync => 0x2fb63f65 => 18
	i32 801787702, ; 56: Xamarin.Android.Support.Interpolator => 0x2fca4f36 => 64
	i32 809851609, ; 57: System.Drawing.Common.dll => 0x30455ad9 => 3
	i32 843511501, ; 58: Xamarin.AndroidX.Print => 0x3246f6cd => 117
	i32 864956750, ; 59: Syncfusion.SfMaskedEdit.XForms => 0x338e314e => 29
	i32 902159924, ; 60: Rg.Plugins.Popup => 0x35c5de34 => 15
	i32 916714535, ; 61: Xamarin.Android.Support.Print.dll => 0x36a3f427 => 67
	i32 928116545, ; 62: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 135
	i32 955402788, ; 63: Newtonsoft.Json => 0x38f24a24 => 12
	i32 967690846, ; 64: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 103
	i32 974778368, ; 65: FormsViewGroup.dll => 0x3a19f000 => 8
	i32 987342438, ; 66: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0x3ad9a666 => 47
	i32 992768348, ; 67: System.Collections.dll => 0x3b2c715c => 147
	i32 1012816738, ; 68: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 119
	i32 1035644815, ; 69: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 81
	i32 1042160112, ; 70: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 132
	i32 1044663988, ; 71: System.Linq.Expressions.dll => 0x3e444eb4 => 148
	i32 1052210849, ; 72: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 107
	i32 1071854640, ; 73: AppPallet => 0x3fe33430 => 7
	i32 1098167829, ; 74: Xamarin.Android.Arch.Lifecycle.ViewModel => 0x4174b615 => 49
	i32 1098259244, ; 75: System => 0x41761b2c => 35
	i32 1175144683, ; 76: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 124
	i32 1178241025, ; 77: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 114
	i32 1204270330, ; 78: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 82
	i32 1267360935, ; 79: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 125
	i32 1292207520, ; 80: SQLitePCLRaw.core.dll => 0x4d0585a0 => 20
	i32 1292763917, ; 81: Xamarin.Android.Support.CursorAdapter.dll => 0x4d0e030d => 58
	i32 1293217323, ; 82: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 96
	i32 1297413738, ; 83: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0x4d54f66a => 46
	i32 1324164729, ; 84: System.Linq => 0x4eed2679 => 150
	i32 1359785034, ; 85: Xamarin.Android.Support.Design.dll => 0x510cac4a => 60
	i32 1364015309, ; 86: System.IO => 0x514d38cd => 144
	i32 1365406463, ; 87: System.ServiceModel.Internals.dll => 0x516272ff => 137
	i32 1376866003, ; 88: Xamarin.AndroidX.SavedState => 0x52114ed3 => 119
	i32 1379779777, ; 89: System.Resources.ResourceManager => 0x523dc4c1 => 1
	i32 1388842911, ; 90: PCLExt.FileStorage.Abstractions.dll => 0x52c80f9f => 13
	i32 1395857551, ; 91: Xamarin.AndroidX.Media.dll => 0x5333188f => 111
	i32 1406073936, ; 92: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 91
	i32 1406198180, ; 93: AppPallet.Android => 0x53d0e1a4 => 0
	i32 1411638395, ; 94: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 39
	i32 1445445088, ; 95: Xamarin.Android.Support.Fragment => 0x5627bde0 => 63
	i32 1457743152, ; 96: System.Runtime.Extensions.dll => 0x56e36530 => 152
	i32 1460219004, ; 97: Xamarin.Forms.Xaml => 0x57092c7c => 133
	i32 1462112819, ; 98: System.IO.Compression.dll => 0x57261233 => 140
	i32 1469204771, ; 99: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 80
	i32 1516315406, ; 100: Syncfusion.Core.XForms.Android.dll => 0x5a61230e => 25
	i32 1550322496, ; 101: System.Reflection.Extensions.dll => 0x5c680b40 => 2
	i32 1574652163, ; 102: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 57
	i32 1582372066, ; 103: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 95
	i32 1587447679, ; 104: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 43
	i32 1592978981, ; 105: System.Runtime.Serialization.dll => 0x5ef2ee25 => 6
	i32 1604451928, ; 106: SQLiteNetExtensions => 0x5fa1fe58 => 17
	i32 1622152042, ; 107: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 109
	i32 1624863272, ; 108: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 128
	i32 1636350590, ; 109: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 93
	i32 1639515021, ; 110: System.Net.Http.dll => 0x61b9038d => 5
	i32 1657153582, ; 111: System.Runtime => 0x62c6282e => 40
	i32 1658241508, ; 112: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 122
	i32 1658251792, ; 113: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 134
	i32 1662014763, ; 114: Xamarin.Android.Support.Vector.Drawable => 0x6310552b => 74
	i32 1666713512, ; 115: SQLiteNetExtensions.dll => 0x635807a8 => 17
	i32 1670060433, ; 116: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 90
	i32 1701541528, ; 117: System.Diagnostics.Debug.dll => 0x656b7698 => 146
	i32 1711441057, ; 118: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 21
	i32 1726116996, ; 119: System.Reflection.dll => 0x66e27484 => 149
	i32 1729485958, ; 120: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 86
	i32 1765942094, ; 121: System.Reflection.Extensions => 0x6942234e => 2
	i32 1766324549, ; 122: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 121
	i32 1776026572, ; 123: System.Core.dll => 0x69dc03cc => 34
	i32 1788241197, ; 124: Xamarin.AndroidX.Fragment => 0x6a96652d => 98
	i32 1808609942, ; 125: Xamarin.AndroidX.Loader => 0x6bcd3296 => 109
	i32 1813201214, ; 126: Xamarin.Google.Android.Material => 0x6c13413e => 134
	i32 1818569960, ; 127: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 115
	i32 1841309220, ; 128: AppPallet.Android.dll => 0x6dc02624 => 0
	i32 1858542181, ; 129: System.Linq.Expressions => 0x6ec71a65 => 148
	i32 1866717392, ; 130: Xamarin.Android.Support.Interpolator.dll => 0x6f43d8d0 => 64
	i32 1867746548, ; 131: Xamarin.Essentials.dll => 0x6f538cf4 => 129
	i32 1877418711, ; 132: Xamarin.Android.Support.v7.RecyclerView.dll => 0x6fe722d7 => 73
	i32 1878053835, ; 133: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 133
	i32 1885316902, ; 134: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 83
	i32 1900610850, ; 135: System.Resources.ResourceManager.dll => 0x71490522 => 1
	i32 1916660109, ; 136: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x723de98d => 49
	i32 1919157823, ; 137: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 112
	i32 1936121326, ; 138: Syncfusion.SfPicker.XForms.dll => 0x7366ddee => 32
	i32 2011961780, ; 139: System.Buffers.dll => 0x77ec19b4 => 33
	i32 2019465201, ; 140: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 107
	i32 2037417872, ; 141: Xamarin.Android.Support.ViewPager => 0x79708790 => 76
	i32 2044222327, ; 142: Xamarin.Android.Support.Loader => 0x79d85b77 => 65
	i32 2055257422, ; 143: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 104
	i32 2071563619, ; 144: Syncfusion.Buttons.XForms.Android => 0x7b798d63 => 23
	i32 2079903147, ; 145: System.Runtime.dll => 0x7bf8cdab => 40
	i32 2090596640, ; 146: System.Numerics.Vectors => 0x7c9bf920 => 38
	i32 2097448633, ; 147: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 100
	i32 2103459038, ; 148: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 22
	i32 2126786730, ; 149: Xamarin.Forms.Platform.Android => 0x7ec430aa => 131
	i32 2139458754, ; 150: Xamarin.Android.Support.DrawerLayout => 0x7f858cc2 => 62
	i32 2166116741, ; 151: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 57
	i32 2192674484, ; 152: Syncfusion.SfMaskedEdit.XForms.dll => 0x82b18eb4 => 29
	i32 2193016926, ; 153: System.ObjectModel.dll => 0x82b6c85e => 151
	i32 2196165013, ; 154: Xamarin.Android.Support.VersionedParcelable => 0x82e6d195 => 75
	i32 2201231467, ; 155: System.Net.Http => 0x8334206b => 5
	i32 2217644978, ; 156: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 124
	i32 2244775296, ; 157: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 110
	i32 2256548716, ; 158: Xamarin.AndroidX.MultiDex => 0x8680336c => 112
	i32 2261435625, ; 159: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 102
	i32 2272153315, ; 160: Syncfusion.SfPicker.Android.dll => 0x876e4ee3 => 30
	i32 2279755925, ; 161: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 118
	i32 2315684594, ; 162: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 78
	i32 2330457430, ; 163: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 56
	i32 2330986192, ; 164: Xamarin.Android.Support.SlidingPaneLayout.dll => 0x8af006d0 => 68
	i32 2343171156, ; 165: Syncfusion.Core.XForms => 0x8ba9f454 => 26
	i32 2354730003, ; 166: Syncfusion.Licensing => 0x8c5a5413 => 27
	i32 2373288475, ; 167: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 63
	i32 2409053734, ; 168: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 116
	i32 2440966767, ; 169: Xamarin.Android.Support.Loader.dll => 0x917e326f => 65
	i32 2465273461, ; 170: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 19
	i32 2465532216, ; 171: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 89
	i32 2471841756, ; 172: netstandard.dll => 0x93554fdc => 138
	i32 2475788418, ; 173: Java.Interop.dll => 0x93918882 => 9
	i32 2487632829, ; 174: Xamarin.Android.Support.DocumentFile => 0x944643bd => 61
	i32 2501346920, ; 175: System.Data.DataSetExtensions => 0x95178668 => 139
	i32 2505896520, ; 176: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 106
	i32 2581819634, ; 177: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 125
	i32 2620871830, ; 178: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 93
	i32 2624644809, ; 179: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 97
	i32 2633051222, ; 180: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 105
	i32 2635300604, ; 181: Syncfusion.Buttons.XForms => 0x9d137efc => 24
	i32 2693849962, ; 182: System.IO.dll => 0xa090e36a => 144
	i32 2698266930, ; 183: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa0d44932 => 47
	i32 2701096212, ; 184: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 122
	i32 2715334215, ; 185: System.Threading.Tasks.dll => 0xa1d8b647 => 145
	i32 2732626843, ; 186: Xamarin.AndroidX.Activity => 0xa2e0939b => 77
	i32 2737747696, ; 187: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 80
	i32 2751899777, ; 188: Xamarin.Android.Support.Collections => 0xa406a881 => 53
	i32 2766581644, ; 189: Xamarin.Forms.Core => 0xa4e6af8c => 130
	i32 2778768386, ; 190: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 127
	i32 2784016111, ; 191: Syncfusion.SfPicker.XForms => 0xa5f0b6ef => 32
	i32 2788639665, ; 192: Xamarin.Android.Support.LocalBroadcastManager => 0xa63743b1 => 66
	i32 2788775637, ; 193: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0xa63956d5 => 69
	i32 2810250172, ; 194: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 91
	i32 2819470561, ; 195: System.Xml.dll => 0xa80db4e1 => 41
	i32 2853208004, ; 196: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 127
	i32 2855708567, ; 197: Xamarin.AndroidX.Transition => 0xaa36a797 => 123
	i32 2861816565, ; 198: Rg.Plugins.Popup.dll => 0xaa93daf5 => 15
	i32 2868557005, ; 199: Syncfusion.Licensing.dll => 0xaafab4cd => 27
	i32 2874148507, ; 200: Syncfusion.Core.XForms.Android => 0xab50069b => 25
	i32 2876493027, ; 201: Xamarin.Android.Support.SwipeRefreshLayout => 0xab73cce3 => 69
	i32 2893257763, ; 202: Xamarin.Android.Arch.Core.Runtime.dll => 0xac739c23 => 44
	i32 2901442782, ; 203: System.Reflection => 0xacf080de => 149
	i32 2903344695, ; 204: System.ComponentModel.Composition => 0xad0d8637 => 142
	i32 2905242038, ; 205: mscorlib.dll => 0xad2a79b6 => 11
	i32 2916838712, ; 206: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 128
	i32 2919462931, ; 207: System.Numerics.Vectors.dll => 0xae037813 => 38
	i32 2921128767, ; 208: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 79
	i32 2921692953, ; 209: Xamarin.Android.Support.CustomView.dll => 0xae257f19 => 59
	i32 2922925221, ; 210: Xamarin.Android.Support.Vector.Drawable.dll => 0xae384ca5 => 74
	i32 2950047143, ; 211: PCLExt.FileStorage.dll => 0xafd625a7 => 14
	i32 2978675010, ; 212: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 96
	i32 3017678341, ; 213: Syncfusion.SfMaskedEdit.XForms.Android => 0xb3de1e05 => 28
	i32 3024354802, ; 214: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 101
	i32 3044182254, ; 215: FormsViewGroup => 0xb57288ee => 8
	i32 3056250942, ; 216: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0xb62ab03e => 52
	i32 3057625584, ; 217: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 113
	i32 3068715062, ; 218: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 45
	i32 3075834255, ; 219: System.Threading.Tasks => 0xb755818f => 145
	i32 3111772706, ; 220: System.Runtime.Serialization => 0xb979e222 => 6
	i32 3204380047, ; 221: System.Data.dll => 0xbefef58f => 4
	i32 3204912593, ; 222: Xamarin.Android.Support.AsyncLayoutInflater => 0xbf0715d1 => 52
	i32 3211777861, ; 223: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 95
	i32 3233339011, ; 224: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xc0b8d683 => 46
	i32 3247949154, ; 225: Mono.Security => 0xc197c562 => 153
	i32 3258312781, ; 226: Xamarin.AndroidX.CardView => 0xc235e84d => 86
	i32 3267021929, ; 227: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 84
	i32 3270722617, ; 228: Syncfusion.SfPicker.Android => 0xc2f34439 => 30
	i32 3286872994, ; 229: SQLite-net.dll => 0xc3e9b3a2 => 16
	i32 3296380511, ; 230: Xamarin.Android.Support.Collections.dll => 0xc47ac65f => 53
	i32 3317135071, ; 231: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 94
	i32 3317144872, ; 232: System.Data => 0xc5b79d28 => 4
	i32 3321585405, ; 233: Xamarin.Android.Support.DocumentFile.dll => 0xc5fb5efd => 61
	i32 3340431453, ; 234: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 83
	i32 3346324047, ; 235: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 114
	i32 3352662376, ; 236: Xamarin.Android.Support.CoordinaterLayout => 0xc7d59168 => 55
	i32 3353484488, ; 237: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 100
	i32 3357663996, ; 238: Xamarin.Android.Support.CursorAdapter => 0xc821e2fc => 58
	i32 3360279109, ; 239: SQLitePCLRaw.core => 0xc849ca45 => 20
	i32 3362522851, ; 240: Xamarin.AndroidX.Core => 0xc86c06e3 => 92
	i32 3366347497, ; 241: Java.Interop => 0xc8a662e9 => 9
	i32 3374999561, ; 242: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 118
	i32 3395150330, ; 243: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 39
	i32 3404865022, ; 244: System.ServiceModel.Internals => 0xcaf21dfe => 137
	i32 3429136800, ; 245: System.Xml => 0xcc6479a0 => 41
	i32 3430777524, ; 246: netstandard => 0xcc7d82b4 => 138
	i32 3434749838, ; 247: Syncfusion.Buttons.XForms.Android.dll => 0xccba1f8e => 23
	i32 3439690031, ; 248: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 51
	i32 3441283291, ; 249: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 97
	i32 3476120550, ; 250: Mono.Android => 0xcf3163e6 => 10
	i32 3486566296, ; 251: System.Transactions => 0xcfd0c798 => 136
	i32 3493954962, ; 252: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 88
	i32 3498942916, ; 253: Xamarin.Android.Support.v7.CardView.dll => 0xd08da1c4 => 72
	i32 3501239056, ; 254: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 84
	i32 3509114376, ; 255: System.Xml.Linq => 0xd128d608 => 42
	i32 3536029504, ; 256: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 131
	i32 3547625832, ; 257: Xamarin.Android.Support.SlidingPaneLayout => 0xd3747968 => 68
	i32 3567349600, ; 258: System.ComponentModel.Composition.dll => 0xd4a16f60 => 142
	i32 3608519521, ; 259: System.Linq.dll => 0xd715a361 => 150
	i32 3618140916, ; 260: Xamarin.AndroidX.Preference => 0xd7a872f4 => 116
	i32 3627220390, ; 261: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 117
	i32 3632359727, ; 262: Xamarin.Forms.Platform => 0xd881692f => 132
	i32 3633644679, ; 263: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 79
	i32 3641597786, ; 264: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 104
	i32 3664423555, ; 265: Xamarin.Android.Support.ViewPager.dll => 0xda6aaa83 => 76
	i32 3672681054, ; 266: Mono.Android.dll => 0xdae8aa5e => 10
	i32 3676310014, ; 267: System.Web.Services.dll => 0xdb2009fe => 143
	i32 3678221644, ; 268: Xamarin.Android.Support.v7.AppCompat => 0xdb3d354c => 71
	i32 3681174138, ; 269: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 45
	i32 3682565725, ; 270: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 85
	i32 3684561358, ; 271: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 88
	i32 3689375977, ; 272: System.Drawing.Common => 0xdbe768e9 => 3
	i32 3695434377, ; 273: AppPallet.dll => 0xdc43da89 => 7
	i32 3714038699, ; 274: Xamarin.Android.Support.LocalBroadcastManager.dll => 0xdd5fbbab => 66
	i32 3718463572, ; 275: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0xdda34054 => 50
	i32 3718780102, ; 276: Xamarin.AndroidX.Annotation => 0xdda814c6 => 78
	i32 3724971120, ; 277: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 113
	i32 3754567612, ; 278: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 22
	i32 3758932259, ; 279: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 102
	i32 3776062606, ; 280: Xamarin.Android.Support.DrawerLayout.dll => 0xe112248e => 62
	i32 3786282454, ; 281: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 87
	i32 3822602673, ; 282: Xamarin.AndroidX.Media => 0xe3d849b1 => 111
	i32 3829621856, ; 283: System.Numerics.dll => 0xe4436460 => 37
	i32 3832731800, ; 284: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe472d898 => 55
	i32 3862817207, ; 285: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 48
	i32 3874897629, ; 286: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 48
	i32 3876362041, ; 287: SQLite-net => 0xe70c9739 => 16
	i32 3883175360, ; 288: Xamarin.Android.Support.v7.AppCompat.dll => 0xe7748dc0 => 71
	i32 3885922214, ; 289: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 123
	i32 3896760992, ; 290: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 92
	i32 3920810846, ; 291: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 141
	i32 3921031405, ; 292: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 126
	i32 3931092270, ; 293: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 115
	i32 3945713374, ; 294: System.Data.DataSetExtensions.dll => 0xeb2ecede => 139
	i32 3949143839, ; 295: Syncfusion.SfPicker.XForms.Android.dll => 0xeb63271f => 31
	i32 3955647286, ; 296: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 81
	i32 4025784931, ; 297: System.Memory => 0xeff49a63 => 36
	i32 4063435586, ; 298: Xamarin.Android.Support.CustomView => 0xf2331b42 => 59
	i32 4087494849, ; 299: SQLiteNetExtensionsAsync.dll => 0xf3a238c1 => 18
	i32 4105002889, ; 300: Mono.Security.dll => 0xf4ad5f89 => 153
	i32 4151237749, ; 301: System.Core => 0xf76edc75 => 34
	i32 4182413190, ; 302: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 108
	i32 4216993138, ; 303: Xamarin.Android.Support.Transition.dll => 0xfb5a3572 => 70
	i32 4219003402, ; 304: Xamarin.Android.Support.v7.CardView => 0xfb78e20a => 72
	i32 4232084532, ; 305: PCLExt.FileStorage.Abstractions => 0xfc407c34 => 13
	i32 4260525087, ; 306: System.Buffers => 0xfdf2741f => 33
	i32 4292120959 ; 307: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 108
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [308 x i32] [
	i32 106, i32 135, i32 12, i32 130, i32 75, i32 28, i32 24, i32 120, ; 0..7
	i32 120, i32 43, i32 87, i32 54, i32 121, i32 44, i32 14, i32 85, ; 8..15
	i32 146, i32 101, i32 143, i32 90, i32 105, i32 99, i32 70, i32 77, ; 16..23
	i32 37, i32 103, i32 21, i32 36, i32 50, i32 56, i32 89, i32 129, ; 24..31
	i32 147, i32 98, i32 11, i32 35, i32 99, i32 110, i32 151, i32 54, ; 32..39
	i32 67, i32 136, i32 60, i32 152, i32 31, i32 73, i32 141, i32 94, ; 40..47
	i32 126, i32 82, i32 42, i32 51, i32 26, i32 19, i32 140, i32 18, ; 48..55
	i32 64, i32 3, i32 117, i32 29, i32 15, i32 67, i32 135, i32 12, ; 56..63
	i32 103, i32 8, i32 47, i32 147, i32 119, i32 81, i32 132, i32 148, ; 64..71
	i32 107, i32 7, i32 49, i32 35, i32 124, i32 114, i32 82, i32 125, ; 72..79
	i32 20, i32 58, i32 96, i32 46, i32 150, i32 60, i32 144, i32 137, ; 80..87
	i32 119, i32 1, i32 13, i32 111, i32 91, i32 0, i32 39, i32 63, ; 88..95
	i32 152, i32 133, i32 140, i32 80, i32 25, i32 2, i32 57, i32 95, ; 96..103
	i32 43, i32 6, i32 17, i32 109, i32 128, i32 93, i32 5, i32 40, ; 104..111
	i32 122, i32 134, i32 74, i32 17, i32 90, i32 146, i32 21, i32 149, ; 112..119
	i32 86, i32 2, i32 121, i32 34, i32 98, i32 109, i32 134, i32 115, ; 120..127
	i32 0, i32 148, i32 64, i32 129, i32 73, i32 133, i32 83, i32 1, ; 128..135
	i32 49, i32 112, i32 32, i32 33, i32 107, i32 76, i32 65, i32 104, ; 136..143
	i32 23, i32 40, i32 38, i32 100, i32 22, i32 131, i32 62, i32 57, ; 144..151
	i32 29, i32 151, i32 75, i32 5, i32 124, i32 110, i32 112, i32 102, ; 152..159
	i32 30, i32 118, i32 78, i32 56, i32 68, i32 26, i32 27, i32 63, ; 160..167
	i32 116, i32 65, i32 19, i32 89, i32 138, i32 9, i32 61, i32 139, ; 168..175
	i32 106, i32 125, i32 93, i32 97, i32 105, i32 24, i32 144, i32 47, ; 176..183
	i32 122, i32 145, i32 77, i32 80, i32 53, i32 130, i32 127, i32 32, ; 184..191
	i32 66, i32 69, i32 91, i32 41, i32 127, i32 123, i32 15, i32 27, ; 192..199
	i32 25, i32 69, i32 44, i32 149, i32 142, i32 11, i32 128, i32 38, ; 200..207
	i32 79, i32 59, i32 74, i32 14, i32 96, i32 28, i32 101, i32 8, ; 208..215
	i32 52, i32 113, i32 45, i32 145, i32 6, i32 4, i32 52, i32 95, ; 216..223
	i32 46, i32 153, i32 86, i32 84, i32 30, i32 16, i32 53, i32 94, ; 224..231
	i32 4, i32 61, i32 83, i32 114, i32 55, i32 100, i32 58, i32 20, ; 232..239
	i32 92, i32 9, i32 118, i32 39, i32 137, i32 41, i32 138, i32 23, ; 240..247
	i32 51, i32 97, i32 10, i32 136, i32 88, i32 72, i32 84, i32 42, ; 248..255
	i32 131, i32 68, i32 142, i32 150, i32 116, i32 117, i32 132, i32 79, ; 256..263
	i32 104, i32 76, i32 10, i32 143, i32 71, i32 45, i32 85, i32 88, ; 264..271
	i32 3, i32 7, i32 66, i32 50, i32 78, i32 113, i32 22, i32 102, ; 272..279
	i32 62, i32 87, i32 111, i32 37, i32 55, i32 48, i32 48, i32 16, ; 280..287
	i32 71, i32 123, i32 92, i32 141, i32 126, i32 115, i32 139, i32 31, ; 288..295
	i32 81, i32 36, i32 59, i32 18, i32 153, i32 34, i32 108, i32 70, ; 296..303
	i32 72, i32 13, i32 33, i32 108 ; 304..307
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
