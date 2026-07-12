.class synthetic Lhaibison/android/lockpattern/utils/UI$1;
.super Ljava/lang/Object;
.source "UI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhaibison/android/lockpattern/utils/UI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$haibison$android$lockpattern$utils$UI$ScreenSize:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 139
    invoke-static {}, Lhaibison/android/lockpattern/utils/UI$ScreenSize;->values()[Lhaibison/android/lockpattern/utils/UI$ScreenSize;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lhaibison/android/lockpattern/utils/UI$1;->$SwitchMap$haibison$android$lockpattern$utils$UI$ScreenSize:[I

    :try_start_0
    sget-object v1, Lhaibison/android/lockpattern/utils/UI$ScreenSize;->LARGE:Lhaibison/android/lockpattern/utils/UI$ScreenSize;

    invoke-virtual {v1}, Lhaibison/android/lockpattern/utils/UI$ScreenSize;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lhaibison/android/lockpattern/utils/UI$1;->$SwitchMap$haibison$android$lockpattern$utils$UI$ScreenSize:[I

    sget-object v1, Lhaibison/android/lockpattern/utils/UI$ScreenSize;->XLARGE:Lhaibison/android/lockpattern/utils/UI$ScreenSize;

    invoke-virtual {v1}, Lhaibison/android/lockpattern/utils/UI$ScreenSize;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
