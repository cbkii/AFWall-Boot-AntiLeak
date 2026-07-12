.class public final enum Lcom/stericson/rootshell/execution/Shell$ShellContext;
.super Ljava/lang/Enum;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/rootshell/execution/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShellContext"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stericson/rootshell/execution/Shell$ShellContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/stericson/rootshell/execution/Shell$ShellContext;

.field public static final enum NORMAL:Lcom/stericson/rootshell/execution/Shell$ShellContext;

.field public static final enum PLATFORM_APP:Lcom/stericson/rootshell/execution/Shell$ShellContext;

.field public static final enum RECOVERY:Lcom/stericson/rootshell/execution/Shell$ShellContext;

.field public static final enum SHELL:Lcom/stericson/rootshell/execution/Shell$ShellContext;

.field public static final enum SYSTEM_APP:Lcom/stericson/rootshell/execution/Shell$ShellContext;

.field public static final enum SYSTEM_SERVER:Lcom/stericson/rootshell/execution/Shell$ShellContext;

.field public static final enum UNTRUSTED_APP:Lcom/stericson/rootshell/execution/Shell$ShellContext;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/stericson/rootshell/execution/Shell$ShellContext;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/stericson/rootshell/execution/Shell$ShellContext;

    const/4 v1, 0x0

    sget-object v2, Lcom/stericson/rootshell/execution/Shell$ShellContext;->NORMAL:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/stericson/rootshell/execution/Shell$ShellContext;->SHELL:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/stericson/rootshell/execution/Shell$ShellContext;->SYSTEM_SERVER:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/stericson/rootshell/execution/Shell$ShellContext;->SYSTEM_APP:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/stericson/rootshell/execution/Shell$ShellContext;->PLATFORM_APP:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/stericson/rootshell/execution/Shell$ShellContext;->UNTRUSTED_APP:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/stericson/rootshell/execution/Shell$ShellContext;->RECOVERY:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 56
    new-instance v0, Lcom/stericson/rootshell/execution/Shell$ShellContext;

    const/4 v1, 0x0

    const-string v2, "normal"

    const-string v3, "NORMAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/stericson/rootshell/execution/Shell$ShellContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stericson/rootshell/execution/Shell$ShellContext;->NORMAL:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    .line 57
    new-instance v0, Lcom/stericson/rootshell/execution/Shell$ShellContext;

    const/4 v1, 0x1

    const-string v2, "u:r:shell:s0"

    const-string v3, "SHELL"

    invoke-direct {v0, v3, v1, v2}, Lcom/stericson/rootshell/execution/Shell$ShellContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stericson/rootshell/execution/Shell$ShellContext;->SHELL:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    .line 58
    new-instance v0, Lcom/stericson/rootshell/execution/Shell$ShellContext;

    const/4 v1, 0x2

    const-string v2, "u:r:system_server:s0"

    const-string v3, "SYSTEM_SERVER"

    invoke-direct {v0, v3, v1, v2}, Lcom/stericson/rootshell/execution/Shell$ShellContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stericson/rootshell/execution/Shell$ShellContext;->SYSTEM_SERVER:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    .line 59
    new-instance v0, Lcom/stericson/rootshell/execution/Shell$ShellContext;

    const/4 v1, 0x3

    const-string v2, "u:r:system_app:s0"

    const-string v3, "SYSTEM_APP"

    invoke-direct {v0, v3, v1, v2}, Lcom/stericson/rootshell/execution/Shell$ShellContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stericson/rootshell/execution/Shell$ShellContext;->SYSTEM_APP:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    .line 60
    new-instance v0, Lcom/stericson/rootshell/execution/Shell$ShellContext;

    const/4 v1, 0x4

    const-string v2, "u:r:platform_app:s0"

    const-string v3, "PLATFORM_APP"

    invoke-direct {v0, v3, v1, v2}, Lcom/stericson/rootshell/execution/Shell$ShellContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stericson/rootshell/execution/Shell$ShellContext;->PLATFORM_APP:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    .line 61
    new-instance v0, Lcom/stericson/rootshell/execution/Shell$ShellContext;

    const/4 v1, 0x5

    const-string v2, "u:r:untrusted_app:s0"

    const-string v3, "UNTRUSTED_APP"

    invoke-direct {v0, v3, v1, v2}, Lcom/stericson/rootshell/execution/Shell$ShellContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stericson/rootshell/execution/Shell$ShellContext;->UNTRUSTED_APP:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    .line 62
    new-instance v0, Lcom/stericson/rootshell/execution/Shell$ShellContext;

    const/4 v1, 0x6

    const-string v2, "u:r:recovery:s0"

    const-string v3, "RECOVERY"

    invoke-direct {v0, v3, v1, v2}, Lcom/stericson/rootshell/execution/Shell$ShellContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stericson/rootshell/execution/Shell$ShellContext;->RECOVERY:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    .line 55
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell$ShellContext;->$values()[Lcom/stericson/rootshell/execution/Shell$ShellContext;

    move-result-object v0

    sput-object v0, Lcom/stericson/rootshell/execution/Shell$ShellContext;->$VALUES:[Lcom/stericson/rootshell/execution/Shell$ShellContext;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/stericson/rootshell/execution/Shell$ShellContext;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stericson/rootshell/execution/Shell$ShellContext;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/stericson/rootshell/execution/Shell$ShellContext;

    .line 55
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stericson/rootshell/execution/Shell$ShellContext;

    return-object p0
.end method

.method public static values()[Lcom/stericson/rootshell/execution/Shell$ShellContext;
    .locals 1

    sget-object v0, Lcom/stericson/rootshell/execution/Shell$ShellContext;->$VALUES:[Lcom/stericson/rootshell/execution/Shell$ShellContext;

    .line 55
    invoke-virtual {v0}, [Lcom/stericson/rootshell/execution/Shell$ShellContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stericson/rootshell/execution/Shell$ShellContext;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stericson/rootshell/execution/Shell$ShellContext;->value:Ljava/lang/String;

    return-object v0
.end method
