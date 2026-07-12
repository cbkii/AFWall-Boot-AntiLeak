.class public final enum Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
.super Ljava/lang/Enum;
.source "BaseModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/structure/BaseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

.field public static final enum CHANGE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

.field public static final enum DELETE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

.field public static final enum INSERT:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

.field public static final enum SAVE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

.field public static final enum UPDATE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 24
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    const-string v1, "SAVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->SAVE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    .line 29
    new-instance v1, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    const-string v3, "INSERT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->INSERT:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    .line 34
    new-instance v3, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    const-string v5, "UPDATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->UPDATE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    .line 39
    new-instance v5, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    const-string v7, "DELETE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->DELETE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    .line 44
    new-instance v7, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    const-string v9, "CHANGE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->CHANGE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->$VALUES:[Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
    .locals 1

    const-class v0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    .line 19
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    return-object p0
.end method

.method public static values()[Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
    .locals 1

    sget-object v0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->$VALUES:[Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    .line 19
    invoke-virtual {v0}, [Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    return-object v0
.end method
