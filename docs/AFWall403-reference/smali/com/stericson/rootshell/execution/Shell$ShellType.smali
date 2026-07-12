.class public final enum Lcom/stericson/rootshell/execution/Shell$ShellType;
.super Ljava/lang/Enum;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/rootshell/execution/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShellType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stericson/rootshell/execution/Shell$ShellType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/stericson/rootshell/execution/Shell$ShellType;

.field public static final enum CUSTOM:Lcom/stericson/rootshell/execution/Shell$ShellType;

.field public static final enum NORMAL:Lcom/stericson/rootshell/execution/Shell$ShellType;

.field public static final enum ROOT:Lcom/stericson/rootshell/execution/Shell$ShellType;


# direct methods
.method private static synthetic $values()[Lcom/stericson/rootshell/execution/Shell$ShellType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/stericson/rootshell/execution/Shell$ShellType;

    const/4 v1, 0x0

    sget-object v2, Lcom/stericson/rootshell/execution/Shell$ShellType;->NORMAL:Lcom/stericson/rootshell/execution/Shell$ShellType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/stericson/rootshell/execution/Shell$ShellType;->ROOT:Lcom/stericson/rootshell/execution/Shell$ShellType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/stericson/rootshell/execution/Shell$ShellType;->CUSTOM:Lcom/stericson/rootshell/execution/Shell$ShellType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Lcom/stericson/rootshell/execution/Shell$ShellType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stericson/rootshell/execution/Shell$ShellType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stericson/rootshell/execution/Shell$ShellType;->NORMAL:Lcom/stericson/rootshell/execution/Shell$ShellType;

    .line 50
    new-instance v0, Lcom/stericson/rootshell/execution/Shell$ShellType;

    const-string v1, "ROOT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stericson/rootshell/execution/Shell$ShellType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stericson/rootshell/execution/Shell$ShellType;->ROOT:Lcom/stericson/rootshell/execution/Shell$ShellType;

    .line 51
    new-instance v0, Lcom/stericson/rootshell/execution/Shell$ShellType;

    const-string v1, "CUSTOM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stericson/rootshell/execution/Shell$ShellType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stericson/rootshell/execution/Shell$ShellType;->CUSTOM:Lcom/stericson/rootshell/execution/Shell$ShellType;

    .line 48
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell$ShellType;->$values()[Lcom/stericson/rootshell/execution/Shell$ShellType;

    move-result-object v0

    sput-object v0, Lcom/stericson/rootshell/execution/Shell$ShellType;->$VALUES:[Lcom/stericson/rootshell/execution/Shell$ShellType;

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

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stericson/rootshell/execution/Shell$ShellType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/stericson/rootshell/execution/Shell$ShellType;

    .line 48
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stericson/rootshell/execution/Shell$ShellType;

    return-object p0
.end method

.method public static values()[Lcom/stericson/rootshell/execution/Shell$ShellType;
    .locals 1

    sget-object v0, Lcom/stericson/rootshell/execution/Shell$ShellType;->$VALUES:[Lcom/stericson/rootshell/execution/Shell$ShellType;

    .line 48
    invoke-virtual {v0}, [Lcom/stericson/rootshell/execution/Shell$ShellType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stericson/rootshell/execution/Shell$ShellType;

    return-object v0
.end method
