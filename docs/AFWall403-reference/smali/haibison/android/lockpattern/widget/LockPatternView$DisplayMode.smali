.class public final enum Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;
.super Ljava/lang/Enum;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhaibison/android/lockpattern/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

.field public static final enum Animate:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

.field public static final enum Correct:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

.field public static final enum Wrong:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 190
    new-instance v0, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    const-string v1, "Correct"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;->Correct:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    .line 195
    new-instance v1, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    const-string v3, "Animate"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;->Animate:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    .line 200
    new-instance v3, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    const-string v5, "Wrong"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;->Wrong:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;->$VALUES:[Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 185
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;
    .locals 1

    const-class v0, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    .line 185
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    return-object p0
.end method

.method public static values()[Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;
    .locals 1

    sget-object v0, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;->$VALUES:[Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    .line 185
    invoke-virtual {v0}, [Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    return-object v0
.end method
