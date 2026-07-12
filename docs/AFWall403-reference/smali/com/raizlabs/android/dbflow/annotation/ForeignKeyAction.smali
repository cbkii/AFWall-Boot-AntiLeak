.class public final enum Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;
.super Ljava/lang/Enum;
.source "ForeignKeyAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

.field public static final enum CASCADE:Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

.field public static final enum NO_ACTION:Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

.field public static final enum RESTRICT:Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

.field public static final enum SET_DEFAULT:Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

.field public static final enum SET_NULL:Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 10
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    const-string v1, "NO_ACTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;->NO_ACTION:Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    .line 15
    new-instance v1, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    const-string v3, "RESTRICT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;->RESTRICT:Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    .line 21
    new-instance v3, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    const-string v5, "SET_NULL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;->SET_NULL:Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    .line 26
    new-instance v5, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    const-string v7, "SET_DEFAULT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;->SET_DEFAULT:Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    .line 33
    new-instance v7, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    const-string v9, "CASCADE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;->CASCADE:Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;->$VALUES:[Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;
    .locals 1

    const-class v0, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    .line 6
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    return-object p0
.end method

.method public static values()[Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;
    .locals 1

    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;->$VALUES:[Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    .line 6
    invoke-virtual {v0}, [Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    return-object v0
.end method
