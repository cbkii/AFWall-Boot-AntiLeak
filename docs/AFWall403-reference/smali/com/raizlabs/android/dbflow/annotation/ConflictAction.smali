.class public final enum Lcom/raizlabs/android/dbflow/annotation/ConflictAction;
.super Ljava/lang/Enum;
.source "ConflictAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/raizlabs/android/dbflow/annotation/ConflictAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

.field public static final enum ABORT:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

.field public static final enum FAIL:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

.field public static final enum IGNORE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

.field public static final enum NONE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

.field public static final enum REPLACE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

.field public static final enum ROLLBACK:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 12
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->NONE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    .line 20
    new-instance v1, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    const-string v3, "ROLLBACK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ROLLBACK:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    .line 28
    new-instance v3, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    const-string v5, "ABORT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ABORT:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    .line 37
    new-instance v5, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    const-string v7, "FAIL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->FAIL:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    .line 46
    new-instance v7, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    const-string v9, "IGNORE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->IGNORE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    .line 61
    new-instance v9, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    const-string v11, "REPLACE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->REPLACE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->$VALUES:[Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getSQLiteDatabaseAlgorithmInt(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)I
    .locals 1

    .line 64
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction$1;->$SwitchMap$com$raizlabs$android$dbflow$annotation$ConflictAction:[I

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/annotation/ConflictAction;
    .locals 1

    const-class v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    .line 7
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    return-object p0
.end method

.method public static values()[Lcom/raizlabs/android/dbflow/annotation/ConflictAction;
    .locals 1

    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->$VALUES:[Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    .line 7
    invoke-virtual {v0}, [Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    return-object v0
.end method
