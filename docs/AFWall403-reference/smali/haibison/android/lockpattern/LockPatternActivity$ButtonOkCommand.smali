.class final enum Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;
.super Ljava/lang/Enum;
.source "LockPatternActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhaibison/android/lockpattern/LockPatternActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ButtonOkCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

.field public static final enum CONTINUE:Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

.field public static final enum DONE:Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

.field public static final enum FORGOT_PATTERN:Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 618
    new-instance v0, Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

    const-string v1, "CONTINUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;->CONTINUE:Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

    new-instance v1, Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

    const-string v3, "FORGOT_PATTERN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;->FORGOT_PATTERN:Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

    new-instance v3, Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

    const-string v5, "DONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;->DONE:Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

    const/4 v5, 0x3

    new-array v5, v5, [Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;->$VALUES:[Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 618
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;
    .locals 1

    const-class v0, Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

    .line 618
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

    return-object p0
.end method

.method public static values()[Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;
    .locals 1

    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;->$VALUES:[Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

    .line 618
    invoke-virtual {v0}, [Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

    return-object v0
.end method
