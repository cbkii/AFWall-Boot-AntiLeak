.class public final enum Lhaibison/android/lockpattern/utils/UI$ScreenSize;
.super Ljava/lang/Enum;
.source "UI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhaibison/android/lockpattern/utils/UI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lhaibison/android/lockpattern/utils/UI$ScreenSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lhaibison/android/lockpattern/utils/UI$ScreenSize;

.field public static final enum LARGE:Lhaibison/android/lockpattern/utils/UI$ScreenSize;

.field public static final enum NORMAL:Lhaibison/android/lockpattern/utils/UI$ScreenSize;

.field public static final enum SMALL:Lhaibison/android/lockpattern/utils/UI$ScreenSize;

.field public static final enum UNDEFINED:Lhaibison/android/lockpattern/utils/UI$ScreenSize;

.field public static final enum XLARGE:Lhaibison/android/lockpattern/utils/UI$ScreenSize;


# instance fields
.field public final fixedHeightMajor:F

.field public final fixedHeightMinor:F

.field public final fixedWidthMajor:F

.field public final fixedWidthMinor:F


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 50
    new-instance v7, Lhaibison/android/lockpattern/utils/UI$ScreenSize;

    const-string v1, "SMALL"

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lhaibison/android/lockpattern/utils/UI$ScreenSize;-><init>(Ljava/lang/String;IFFFF)V

    sput-object v7, Lhaibison/android/lockpattern/utils/UI$ScreenSize;->SMALL:Lhaibison/android/lockpattern/utils/UI$ScreenSize;

    .line 55
    new-instance v0, Lhaibison/android/lockpattern/utils/UI$ScreenSize;

    const-string v9, "NORMAL"

    const/4 v10, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lhaibison/android/lockpattern/utils/UI$ScreenSize;-><init>(Ljava/lang/String;IFFFF)V

    sput-object v0, Lhaibison/android/lockpattern/utils/UI$ScreenSize;->NORMAL:Lhaibison/android/lockpattern/utils/UI$ScreenSize;

    .line 60
    new-instance v1, Lhaibison/android/lockpattern/utils/UI$ScreenSize;

    const-string v16, "LARGE"

    const/16 v17, 0x2

    const v18, 0x3f19999a    # 0.6f

    const v19, 0x3f666666    # 0.9f

    const v20, 0x3f19999a    # 0.6f

    const v21, 0x3f666666    # 0.9f

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lhaibison/android/lockpattern/utils/UI$ScreenSize;-><init>(Ljava/lang/String;IFFFF)V

    sput-object v1, Lhaibison/android/lockpattern/utils/UI$ScreenSize;->LARGE:Lhaibison/android/lockpattern/utils/UI$ScreenSize;

    .line 65
    new-instance v2, Lhaibison/android/lockpattern/utils/UI$ScreenSize;

    const-string v9, "XLARGE"

    const/4 v10, 0x3

    const v11, 0x3f19999a    # 0.6f

    const v12, 0x3f666666    # 0.9f

    const/high16 v13, 0x3f000000    # 0.5f

    const v14, 0x3f333333    # 0.7f

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lhaibison/android/lockpattern/utils/UI$ScreenSize;-><init>(Ljava/lang/String;IFFFF)V

    sput-object v2, Lhaibison/android/lockpattern/utils/UI$ScreenSize;->XLARGE:Lhaibison/android/lockpattern/utils/UI$ScreenSize;

    .line 70
    new-instance v3, Lhaibison/android/lockpattern/utils/UI$ScreenSize;

    const-string v16, "UNDEFINED"

    const/16 v17, 0x4

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lhaibison/android/lockpattern/utils/UI$ScreenSize;-><init>(Ljava/lang/String;IFFFF)V

    sput-object v3, Lhaibison/android/lockpattern/utils/UI$ScreenSize;->UNDEFINED:Lhaibison/android/lockpattern/utils/UI$ScreenSize;

    const/4 v4, 0x5

    new-array v4, v4, [Lhaibison/android/lockpattern/utils/UI$ScreenSize;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    sput-object v4, Lhaibison/android/lockpattern/utils/UI$ScreenSize;->$VALUES:[Lhaibison/android/lockpattern/utils/UI$ScreenSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lhaibison/android/lockpattern/utils/UI$ScreenSize;->fixedHeightMajor:F

    iput p4, p0, Lhaibison/android/lockpattern/utils/UI$ScreenSize;->fixedHeightMinor:F

    iput p5, p0, Lhaibison/android/lockpattern/utils/UI$ScreenSize;->fixedWidthMajor:F

    iput p6, p0, Lhaibison/android/lockpattern/utils/UI$ScreenSize;->fixedWidthMinor:F

    return-void
.end method

.method public static getCurrent(Landroid/content/Context;)Lhaibison/android/lockpattern/utils/UI$ScreenSize;
    .locals 1

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    sget-object p0, Lhaibison/android/lockpattern/utils/UI$ScreenSize;->UNDEFINED:Lhaibison/android/lockpattern/utils/UI$ScreenSize;

    return-object p0

    :cond_0
    sget-object p0, Lhaibison/android/lockpattern/utils/UI$ScreenSize;->XLARGE:Lhaibison/android/lockpattern/utils/UI$ScreenSize;

    return-object p0

    :cond_1
    sget-object p0, Lhaibison/android/lockpattern/utils/UI$ScreenSize;->LARGE:Lhaibison/android/lockpattern/utils/UI$ScreenSize;

    return-object p0

    :cond_2
    sget-object p0, Lhaibison/android/lockpattern/utils/UI$ScreenSize;->NORMAL:Lhaibison/android/lockpattern/utils/UI$ScreenSize;

    return-object p0

    :cond_3
    sget-object p0, Lhaibison/android/lockpattern/utils/UI$ScreenSize;->SMALL:Lhaibison/android/lockpattern/utils/UI$ScreenSize;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lhaibison/android/lockpattern/utils/UI$ScreenSize;
    .locals 1

    const-class v0, Lhaibison/android/lockpattern/utils/UI$ScreenSize;

    .line 46
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lhaibison/android/lockpattern/utils/UI$ScreenSize;

    return-object p0
.end method

.method public static values()[Lhaibison/android/lockpattern/utils/UI$ScreenSize;
    .locals 1

    sget-object v0, Lhaibison/android/lockpattern/utils/UI$ScreenSize;->$VALUES:[Lhaibison/android/lockpattern/utils/UI$ScreenSize;

    .line 46
    invoke-virtual {v0}, [Lhaibison/android/lockpattern/utils/UI$ScreenSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhaibison/android/lockpattern/utils/UI$ScreenSize;

    return-object v0
.end method
