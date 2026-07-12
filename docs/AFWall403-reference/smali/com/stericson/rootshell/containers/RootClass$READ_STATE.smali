.class final enum Lcom/stericson/rootshell/containers/RootClass$READ_STATE;
.super Ljava/lang/Enum;
.source "RootClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/rootshell/containers/RootClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "READ_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stericson/rootshell/containers/RootClass$READ_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/stericson/rootshell/containers/RootClass$READ_STATE;

.field public static final enum FOUND_ANNOTATION:Lcom/stericson/rootshell/containers/RootClass$READ_STATE;

.field public static final enum STARTING:Lcom/stericson/rootshell/containers/RootClass$READ_STATE;


# direct methods
.method private static synthetic $values()[Lcom/stericson/rootshell/containers/RootClass$READ_STATE;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/stericson/rootshell/containers/RootClass$READ_STATE;

    const/4 v1, 0x0

    sget-object v2, Lcom/stericson/rootshell/containers/RootClass$READ_STATE;->STARTING:Lcom/stericson/rootshell/containers/RootClass$READ_STATE;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/stericson/rootshell/containers/RootClass$READ_STATE;->FOUND_ANNOTATION:Lcom/stericson/rootshell/containers/RootClass$READ_STATE;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Lcom/stericson/rootshell/containers/RootClass$READ_STATE;

    const-string v1, "STARTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stericson/rootshell/containers/RootClass$READ_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stericson/rootshell/containers/RootClass$READ_STATE;->STARTING:Lcom/stericson/rootshell/containers/RootClass$READ_STATE;

    new-instance v0, Lcom/stericson/rootshell/containers/RootClass$READ_STATE;

    const-string v1, "FOUND_ANNOTATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stericson/rootshell/containers/RootClass$READ_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stericson/rootshell/containers/RootClass$READ_STATE;->FOUND_ANNOTATION:Lcom/stericson/rootshell/containers/RootClass$READ_STATE;

    .line 32
    invoke-static {}, Lcom/stericson/rootshell/containers/RootClass$READ_STATE;->$values()[Lcom/stericson/rootshell/containers/RootClass$READ_STATE;

    move-result-object v0

    sput-object v0, Lcom/stericson/rootshell/containers/RootClass$READ_STATE;->$VALUES:[Lcom/stericson/rootshell/containers/RootClass$READ_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stericson/rootshell/containers/RootClass$READ_STATE;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/stericson/rootshell/containers/RootClass$READ_STATE;

    .line 32
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stericson/rootshell/containers/RootClass$READ_STATE;

    return-object p0
.end method

.method public static values()[Lcom/stericson/rootshell/containers/RootClass$READ_STATE;
    .locals 1

    sget-object v0, Lcom/stericson/rootshell/containers/RootClass$READ_STATE;->$VALUES:[Lcom/stericson/rootshell/containers/RootClass$READ_STATE;

    .line 32
    invoke-virtual {v0}, [Lcom/stericson/rootshell/containers/RootClass$READ_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stericson/rootshell/containers/RootClass$READ_STATE;

    return-object v0
.end method
