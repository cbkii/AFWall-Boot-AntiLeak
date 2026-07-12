.class public final enum Lcom/raizlabs/android/dbflow/annotation/Collate;
.super Ljava/lang/Enum;
.source "Collate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/raizlabs/android/dbflow/annotation/Collate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/raizlabs/android/dbflow/annotation/Collate;

.field public static final enum BINARY:Lcom/raizlabs/android/dbflow/annotation/Collate;

.field public static final enum LOCALIZED:Lcom/raizlabs/android/dbflow/annotation/Collate;

.field public static final enum NOCASE:Lcom/raizlabs/android/dbflow/annotation/Collate;

.field public static final enum NONE:Lcom/raizlabs/android/dbflow/annotation/Collate;

.field public static final enum RTRIM:Lcom/raizlabs/android/dbflow/annotation/Collate;

.field public static final enum UNICODE:Lcom/raizlabs/android/dbflow/annotation/Collate;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 11
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/Collate;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/annotation/Collate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/Collate;->NONE:Lcom/raizlabs/android/dbflow/annotation/Collate;

    .line 16
    new-instance v1, Lcom/raizlabs/android/dbflow/annotation/Collate;

    const-string v3, "BINARY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/raizlabs/android/dbflow/annotation/Collate;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/raizlabs/android/dbflow/annotation/Collate;->BINARY:Lcom/raizlabs/android/dbflow/annotation/Collate;

    .line 22
    new-instance v3, Lcom/raizlabs/android/dbflow/annotation/Collate;

    const-string v5, "NOCASE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/raizlabs/android/dbflow/annotation/Collate;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/raizlabs/android/dbflow/annotation/Collate;->NOCASE:Lcom/raizlabs/android/dbflow/annotation/Collate;

    .line 27
    new-instance v5, Lcom/raizlabs/android/dbflow/annotation/Collate;

    const-string v7, "RTRIM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/raizlabs/android/dbflow/annotation/Collate;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/raizlabs/android/dbflow/annotation/Collate;->RTRIM:Lcom/raizlabs/android/dbflow/annotation/Collate;

    .line 32
    new-instance v7, Lcom/raizlabs/android/dbflow/annotation/Collate;

    const-string v9, "LOCALIZED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/raizlabs/android/dbflow/annotation/Collate;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/raizlabs/android/dbflow/annotation/Collate;->LOCALIZED:Lcom/raizlabs/android/dbflow/annotation/Collate;

    .line 37
    new-instance v9, Lcom/raizlabs/android/dbflow/annotation/Collate;

    const-string v11, "UNICODE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/raizlabs/android/dbflow/annotation/Collate;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/raizlabs/android/dbflow/annotation/Collate;->UNICODE:Lcom/raizlabs/android/dbflow/annotation/Collate;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/raizlabs/android/dbflow/annotation/Collate;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/raizlabs/android/dbflow/annotation/Collate;->$VALUES:[Lcom/raizlabs/android/dbflow/annotation/Collate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/annotation/Collate;
    .locals 1

    const-class v0, Lcom/raizlabs/android/dbflow/annotation/Collate;

    .line 6
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/raizlabs/android/dbflow/annotation/Collate;

    return-object p0
.end method

.method public static values()[Lcom/raizlabs/android/dbflow/annotation/Collate;
    .locals 1

    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/Collate;->$VALUES:[Lcom/raizlabs/android/dbflow/annotation/Collate;

    .line 6
    invoke-virtual {v0}, [Lcom/raizlabs/android/dbflow/annotation/Collate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/raizlabs/android/dbflow/annotation/Collate;

    return-object v0
.end method
