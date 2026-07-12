.class public final enum Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;
.super Ljava/lang/Enum;
.source "Join.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/sql/language/Join;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JoinType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

.field public static final enum CROSS:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

.field public static final enum INNER:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

.field public static final enum LEFT_OUTER:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

.field public static final enum NATURAL:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 35
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    const-string v1, "LEFT_OUTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->LEFT_OUTER:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    .line 42
    new-instance v1, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    const-string v3, "INNER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->INNER:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    .line 50
    new-instance v3, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    const-string v5, "CROSS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->CROSS:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    .line 56
    new-instance v5, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    const-string v7, "NATURAL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->NATURAL:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->$VALUES:[Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;
    .locals 1

    const-class v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    .line 24
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    return-object p0
.end method

.method public static values()[Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;
    .locals 1

    sget-object v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->$VALUES:[Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    .line 24
    invoke-virtual {v0}, [Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    return-object v0
.end method
