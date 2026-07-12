.class public Lhaibison/android/lockpattern/utils/UI;
.super Ljava/lang/Object;
.source "UI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhaibison/android/lockpattern/utils/UI$ScreenSize;
    }
.end annotation


# static fields
.field private static final CLASSNAME:Ljava/lang/String; = "haibison.android.lockpattern.utils.UI"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustDialogSizeForLargeScreens(Landroid/app/Dialog;)V
    .locals 0

    .line 125
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lhaibison/android/lockpattern/utils/UI;->adjustDialogSizeForLargeScreens(Landroid/view/Window;)V

    return-void
.end method

.method public static adjustDialogSizeForLargeScreens(Landroid/view/Window;)V
    .locals 5

    .line 136
    invoke-virtual {p0}, Landroid/view/Window;->isFloating()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhaibison/android/lockpattern/utils/UI$ScreenSize;->getCurrent(Landroid/content/Context;)Lhaibison/android/lockpattern/utils/UI$ScreenSize;

    move-result-object v0

    .line 139
    sget-object v1, Lhaibison/android/lockpattern/utils/UI$1;->$SwitchMap$haibison$android$lockpattern$utils$UI$ScreenSize:[I

    invoke-virtual {v0}, Lhaibison/android/lockpattern/utils/UI$ScreenSize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    return-void

    .line 144
    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 145
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 147
    :goto_0
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 148
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    if-eqz v2, :cond_3

    .line 151
    iget v4, v0, Lhaibison/android/lockpattern/utils/UI$ScreenSize;->fixedWidthMinor:F

    goto :goto_1

    :cond_3
    iget v4, v0, Lhaibison/android/lockpattern/utils/UI$ScreenSize;->fixedWidthMajor:F

    :goto_1
    mul-float v3, v3, v4

    float-to-int v3, v3

    int-to-float v1, v1

    if-eqz v2, :cond_4

    .line 152
    iget v0, v0, Lhaibison/android/lockpattern/utils/UI$ScreenSize;->fixedHeightMajor:F

    goto :goto_2

    :cond_4
    iget v0, v0, Lhaibison/android/lockpattern/utils/UI$ScreenSize;->fixedHeightMinor:F

    :goto_2
    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 155
    invoke-virtual {p0, v3, v0}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method
