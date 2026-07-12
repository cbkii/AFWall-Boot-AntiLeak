.class public Lcom/stericson/rootshell/execution/JavaCommand;
.super Lcom/stericson/rootshell/execution/Command;
.source "JavaCommand.java"


# direct methods
.method public varargs constructor <init>(IILandroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p4}, Lcom/stericson/rootshell/execution/Command;-><init>(II[Ljava/lang/String;)V

    .line 36
    iput-object p3, p0, Lcom/stericson/rootshell/execution/JavaCommand;->context:Landroid/content/Context;

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/stericson/rootshell/execution/JavaCommand;->javaCommand:Z

    return-void
.end method

.method public varargs constructor <init>(ILandroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p3}, Lcom/stericson/rootshell/execution/Command;-><init>(I[Ljava/lang/String;)V

    .line 14
    iput-object p2, p0, Lcom/stericson/rootshell/execution/JavaCommand;->context:Landroid/content/Context;

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/stericson/rootshell/execution/JavaCommand;->javaCommand:Z

    return-void
.end method

.method public varargs constructor <init>(IZLandroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p4}, Lcom/stericson/rootshell/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    .line 25
    iput-object p3, p0, Lcom/stericson/rootshell/execution/JavaCommand;->context:Landroid/content/Context;

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/stericson/rootshell/execution/JavaCommand;->javaCommand:Z

    return-void
.end method


# virtual methods
.method public commandCompleted(II)V
    .locals 0

    return-void
.end method

.method public commandOutput(ILjava/lang/String;)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2}, Lcom/stericson/rootshell/execution/Command;->commandOutput(ILjava/lang/String;)V

    return-void
.end method

.method public commandTerminated(ILjava/lang/String;)V
    .locals 0

    return-void
.end method
