.class public final enum Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;
.super Ljava/lang/Enum;
.source "OneToMany.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/annotation/OneToMany;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

.field public static final enum ALL:Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

.field public static final enum DELETE:Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

.field public static final enum LOAD:Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

.field public static final enum SAVE:Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 27
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    const-string v1, "LOAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;->LOAD:Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    .line 32
    new-instance v1, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    const-string v3, "DELETE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;->DELETE:Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    .line 37
    new-instance v3, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    const-string v5, "SAVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;->SAVE:Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    .line 42
    new-instance v5, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    const-string v7, "ALL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;->ALL:Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;->$VALUES:[Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;
    .locals 1

    const-class v0, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    .line 21
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    return-object p0
.end method

.method public static values()[Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;
    .locals 1

    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;->$VALUES:[Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    .line 21
    invoke-virtual {v0}, [Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;

    return-object v0
.end method
