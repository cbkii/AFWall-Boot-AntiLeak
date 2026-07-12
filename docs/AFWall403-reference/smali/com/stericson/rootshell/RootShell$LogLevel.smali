.class public final enum Lcom/stericson/rootshell/RootShell$LogLevel;
.super Ljava/lang/Enum;
.source "RootShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/rootshell/RootShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stericson/rootshell/RootShell$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/stericson/rootshell/RootShell$LogLevel;

.field public static final enum DEBUG:Lcom/stericson/rootshell/RootShell$LogLevel;

.field public static final enum ERROR:Lcom/stericson/rootshell/RootShell$LogLevel;

.field public static final enum VERBOSE:Lcom/stericson/rootshell/RootShell$LogLevel;

.field public static final enum WARN:Lcom/stericson/rootshell/RootShell$LogLevel;


# direct methods
.method private static synthetic $values()[Lcom/stericson/rootshell/RootShell$LogLevel;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/stericson/rootshell/RootShell$LogLevel;

    const/4 v1, 0x0

    sget-object v2, Lcom/stericson/rootshell/RootShell$LogLevel;->VERBOSE:Lcom/stericson/rootshell/RootShell$LogLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/stericson/rootshell/RootShell$LogLevel;->ERROR:Lcom/stericson/rootshell/RootShell$LogLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/stericson/rootshell/RootShell$LogLevel;->DEBUG:Lcom/stericson/rootshell/RootShell$LogLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/stericson/rootshell/RootShell$LogLevel;->WARN:Lcom/stericson/rootshell/RootShell$LogLevel;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 68
    new-instance v0, Lcom/stericson/rootshell/RootShell$LogLevel;

    const-string v1, "VERBOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stericson/rootshell/RootShell$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stericson/rootshell/RootShell$LogLevel;->VERBOSE:Lcom/stericson/rootshell/RootShell$LogLevel;

    .line 69
    new-instance v0, Lcom/stericson/rootshell/RootShell$LogLevel;

    const-string v1, "ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stericson/rootshell/RootShell$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stericson/rootshell/RootShell$LogLevel;->ERROR:Lcom/stericson/rootshell/RootShell$LogLevel;

    .line 70
    new-instance v0, Lcom/stericson/rootshell/RootShell$LogLevel;

    const-string v1, "DEBUG"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stericson/rootshell/RootShell$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stericson/rootshell/RootShell$LogLevel;->DEBUG:Lcom/stericson/rootshell/RootShell$LogLevel;

    .line 71
    new-instance v0, Lcom/stericson/rootshell/RootShell$LogLevel;

    const-string v1, "WARN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stericson/rootshell/RootShell$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stericson/rootshell/RootShell$LogLevel;->WARN:Lcom/stericson/rootshell/RootShell$LogLevel;

    .line 67
    invoke-static {}, Lcom/stericson/rootshell/RootShell$LogLevel;->$values()[Lcom/stericson/rootshell/RootShell$LogLevel;

    move-result-object v0

    sput-object v0, Lcom/stericson/rootshell/RootShell$LogLevel;->$VALUES:[Lcom/stericson/rootshell/RootShell$LogLevel;

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

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stericson/rootshell/RootShell$LogLevel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/stericson/rootshell/RootShell$LogLevel;

    .line 67
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stericson/rootshell/RootShell$LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/stericson/rootshell/RootShell$LogLevel;
    .locals 1

    sget-object v0, Lcom/stericson/rootshell/RootShell$LogLevel;->$VALUES:[Lcom/stericson/rootshell/RootShell$LogLevel;

    .line 67
    invoke-virtual {v0}, [Lcom/stericson/rootshell/RootShell$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stericson/rootshell/RootShell$LogLevel;

    return-object v0
.end method
