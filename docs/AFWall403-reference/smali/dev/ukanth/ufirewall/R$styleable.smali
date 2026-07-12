.class public final Ldev/ukanth/ufirewall/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static SeekBarPreference:[I = null

.field public static SeekBarPreference_adjustable:I = 0x2

.field public static SeekBarPreference_android_layout:I = 0x0

.field public static SeekBarPreference_android_max:I = 0x1

.field public static SeekBarPreference_min:I = 0x3

.field public static SeekBarPreference_seekBarIncrement:I = 0x4

.field public static SeekBarPreference_showSeekBarValue:I = 0x5

.field public static SeekBarPreference_suffix:I = 0x6

.field public static SeekBarPreference_updatesContinuously:I = 0x7


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ldev/ukanth/ufirewall/R$styleable;->SeekBarPreference:[I

    return-void

    :array_0
    .array-data 4
        0x10100f2
        0x1010136
        0x7f040029
        0x7f040336
        0x7f0403e1
        0x7f0403fe
        0x7f04043d
        0x7f0404f1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
