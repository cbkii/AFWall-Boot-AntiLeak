.class public final Lcom/stericson/roottools/RootTools;
.super Ljava/lang/Object;
.source "RootTools.java"


# static fields
.field public static debugMode:Z = false

.field public static default_Command_Timeout:I = 0x4e20

.field public static handlerEnabled:Z = true

.field private static rim:Lcom/stericson/roottools/internal/RootToolsInternalMethods;

.field public static utilPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUtil(Ljava/lang/String;)Z
    .locals 1

    .line 119
    invoke-static {}, Lcom/stericson/roottools/RootTools;->getInternals()Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static closeAllShells()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-static {}, Lcom/stericson/rootshell/RootShell;->closeAllShells()V

    return-void
.end method

.method public static closeCustomShell()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-static {}, Lcom/stericson/rootshell/RootShell;->closeCustomShell()V

    return-void
.end method

.method public static closeShell(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-static {p0}, Lcom/stericson/rootshell/RootShell;->closeShell(Z)V

    return-void
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 1

    .line 163
    invoke-static {}, Lcom/stericson/roottools/RootTools;->getInternals()Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method public static deleteFileOrDirectory(Ljava/lang/String;Z)Z
    .locals 1

    .line 174
    invoke-static {}, Lcom/stericson/roottools/RootTools;->getInternals()Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->deleteFileOrDirectory(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 185
    invoke-static {p0, v0}, Lcom/stericson/roottools/RootTools;->exists(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static exists(Ljava/lang/String;Z)Z
    .locals 0

    .line 197
    invoke-static {p0, p1}, Lcom/stericson/rootshell/RootShell;->exists(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static findBinary(Ljava/lang/String;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 236
    invoke-static {p0, p1}, Lcom/stericson/rootshell/RootShell;->findBinary(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static fixUtil(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 211
    invoke-static {}, Lcom/stericson/roottools/RootTools;->getInternals()Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->fixUtil(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fixUtils([Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 226
    invoke-static {}, Lcom/stericson/roottools/RootTools;->getInternals()Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->fixUtils([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getBusyBoxApplets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ""

    .line 261
    invoke-static {v0}, Lcom/stericson/roottools/RootTools;->getBusyBoxApplets(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getBusyBoxApplets(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 272
    invoke-static {}, Lcom/stericson/roottools/RootTools;->getInternals()Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->getBusyBoxApplets(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getBusyBoxVersion()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 251
    invoke-static {v0}, Lcom/stericson/roottools/RootTools;->getBusyBoxVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBusyBoxVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 244
    invoke-static {}, Lcom/stericson/roottools/RootTools;->getInternals()Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->getBusyBoxVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCustomShell(Ljava/lang/String;)Lcom/stericson/rootshell/execution/Shell;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/rootshell/exceptions/RootDeniedException;
        }
    .end annotation

    const/16 v0, 0x2710

    .line 299
    invoke-static {p0, v0}, Lcom/stericson/roottools/RootTools;->getCustomShell(Ljava/lang/String;I)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p0

    return-object p0
.end method

.method public static getCustomShell(Ljava/lang/String;I)Lcom/stericson/rootshell/execution/Shell;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/rootshell/exceptions/RootDeniedException;
        }
    .end annotation

    .line 286
    invoke-static {p0, p1}, Lcom/stericson/rootshell/RootShell;->getCustomShell(Ljava/lang/String;I)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p0

    return-object p0
.end method

.method public static getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/stericson/roottools/containers/Permissions;
    .locals 1

    .line 309
    invoke-static {}, Lcom/stericson/roottools/RootTools;->getInternals()Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/stericson/roottools/containers/Permissions;

    move-result-object p0

    return-object p0
.end method

.method public static getInode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 320
    invoke-static {}, Lcom/stericson/roottools/RootTools;->getInternals()Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->getInode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final getInternals()Lcom/stericson/roottools/internal/RootToolsInternalMethods;
    .locals 1

    sget-object v0, Lcom/stericson/roottools/RootTools;->rim:Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->getInstance()V

    sget-object v0, Lcom/stericson/roottools/RootTools;->rim:Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    :cond_0
    return-object v0
.end method

.method public static getMountedAs(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 345
    invoke-static {}, Lcom/stericson/roottools/RootTools;->getInternals()Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->getMountedAs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMounts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/stericson/roottools/containers/Mount;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 333
    invoke-static {}, Lcom/stericson/roottools/RootTools;->getInternals()Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->getMounts()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getPath()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PATH"

    .line 354
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getShell(Z)Lcom/stericson/rootshell/execution/Shell;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/rootshell/exceptions/RootDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 426
    invoke-static {p0, v0}, Lcom/stericson/roottools/RootTools;->getShell(ZI)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p0

    return-object p0
.end method

.method public static getShell(ZI)Lcom/stericson/rootshell/execution/Shell;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/rootshell/exceptions/RootDeniedException;
        }
    .end annotation

    .line 413
    sget-object v0, Lcom/stericson/rootshell/execution/Shell;->defaultContext:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    const/4 v1, 0x3

    invoke-static {p0, p1, v0, v1}, Lcom/stericson/roottools/RootTools;->getShell(ZILcom/stericson/rootshell/execution/Shell$ShellContext;I)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p0

    return-object p0
.end method

.method public static getShell(ZILcom/stericson/rootshell/execution/Shell$ShellContext;)Lcom/stericson/rootshell/execution/Shell;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/rootshell/exceptions/RootDeniedException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 385
    invoke-static {p0, p1, p2, v0}, Lcom/stericson/roottools/RootTools;->getShell(ZILcom/stericson/rootshell/execution/Shell$ShellContext;I)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p0

    return-object p0
.end method

.method public static getShell(ZILcom/stericson/rootshell/execution/Shell$ShellContext;I)Lcom/stericson/rootshell/execution/Shell;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/rootshell/exceptions/RootDeniedException;
        }
    .end annotation

    .line 370
    invoke-static {p0, p1, p2, p3}, Lcom/stericson/rootshell/RootShell;->getShell(ZILcom/stericson/rootshell/execution/Shell$ShellContext;I)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p0

    return-object p0
.end method

.method public static getShell(ZLcom/stericson/rootshell/execution/Shell$ShellContext;)Lcom/stericson/rootshell/execution/Shell;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/rootshell/exceptions/RootDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 399
    invoke-static {p0, v0, p1, v1}, Lcom/stericson/roottools/RootTools;->getShell(ZILcom/stericson/rootshell/execution/Shell$ShellContext;I)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p0

    return-object p0
.end method

.method public static getSpace(Ljava/lang/String;)J
    .locals 2

    .line 438
    invoke-static {}, Lcom/stericson/roottools/RootTools;->getInternals()Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->getSpace(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSymlink(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 450
    invoke-static {}, Lcom/stericson/roottools/RootTools;->getInternals()Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->getSymlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSymlinks(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/stericson/roottools/containers/Symlink;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 464
    invoke-static {}, Lcom/stericson/roottools/RootTools;->getInternals()Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->getSymlinks(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getWorkingToolbox()Ljava/lang/String;
    .locals 1

    .line 475
    invoke-static {}, Lcom/stericson/roottools/RootTools;->getInternals()Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->getWorkingToolbox()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasBinary(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 542
    invoke-static {}, Lcom/stericson/roottools/RootTools;->getInternals()Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->isBinaryAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasEnoughSpaceOnSdCard(J)Z
    .locals 1

    .line 487
    invoke-static {}, Lcom/stericson/roottools/RootTools;->getInternals()Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->hasEnoughSpaceOnSdCard(J)Z

    move-result p0

    return p0
.end method

.method public static hasUtil(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 499
    invoke-static {}, Lcom/stericson/roottools/RootTools;->getInternals()Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static installBinary(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1

    const-string v0, "700"

    .line 530
    invoke-static {p0, p1, p2, v0}, Lcom/stericson/roottools/RootTools;->installBinary(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static installBinary(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 515
    invoke-static {}, Lcom/stericson/roottools/RootTools;->getInternals()Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->installBinary(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isAccessGiven()Z
    .locals 1

    .line 572
    invoke-static {}, Lcom/stericson/rootshell/RootShell;->isAccessGiven()Z

    move-result v0

    return v0
.end method

.method public static isAccessGiven(II)Z
    .locals 0

    .line 585
    invoke-static {p0, p1}, Lcom/stericson/rootshell/RootShell;->isAccessGiven(II)Z

    move-result p0

    return p0
.end method

.method public static isAppletAvailable(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ""

    .line 565
    invoke-static {p0, v0}, Lcom/stericson/roottools/RootTools;->isAppletAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isAppletAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 554
    invoke-static {}, Lcom/stericson/roottools/RootTools;->getInternals()Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->isAppletAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isBusyboxAvailable()Z
    .locals 1

    .line 592
    invoke-static {}, Lcom/stericson/rootshell/RootShell;->isBusyboxAvailable()Z

    move-result v0

    return v0
.end method

.method public static isNativeToolsReady(ILandroid/content/Context;)Z
    .locals 1

    .line 596
    invoke-static {}, Lcom/stericson/roottools/RootTools;->getInternals()Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->isNativeToolsReady(ILandroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isProcessRunning(Ljava/lang/String;)Z
    .locals 1

    .line 608
    invoke-static {}, Lcom/stericson/roottools/RootTools;->getInternals()Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->isProcessRunning(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isRootAvailable()Z
    .locals 1

    .line 615
    invoke-static {}, Lcom/stericson/rootshell/RootShell;->isRootAvailable()Z

    move-result v0

    return v0
.end method

.method public static islog()Z
    .locals 1

    sget-boolean v0, Lcom/stericson/roottools/RootTools;->debugMode:Z

    return v0
.end method

.method public static killProcess(Ljava/lang/String;)Z
    .locals 1

    .line 626
    invoke-static {}, Lcom/stericson/roottools/RootTools;->getInternals()Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->killProcess(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 752
    invoke-static {v0, p0, v1, v0}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    return-void
.end method

.method public static log(Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x0

    .line 787
    invoke-static {v0, p0, p1, p2}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 769
    invoke-static {p0, p1, v0, v1}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 1

    if-eqz p1, :cond_4

    const-string v0, ""

    .line 828
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/stericson/roottools/RootTools;->debugMode:Z

    if-eqz v0, :cond_4

    if-nez p0, :cond_0

    const-string p0, "RootTools v4.4"

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_1

    goto :goto_0

    .line 842
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 839
    :cond_2
    invoke-static {p0, p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 836
    :cond_3
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public static offerBusyBox(Landroid/app/Activity;I)Landroid/content/Intent;
    .locals 1

    .line 647
    invoke-static {}, Lcom/stericson/roottools/RootTools;->getInternals()Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->offerBusyBox(Landroid/app/Activity;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static offerBusyBox(Landroid/app/Activity;)V
    .locals 1

    .line 635
    invoke-static {}, Lcom/stericson/roottools/RootTools;->getInternals()Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->offerBusyBox(Landroid/app/Activity;)V

    return-void
.end method

.method public static offerSuperUser(Landroid/app/Activity;I)Landroid/content/Intent;
    .locals 1

    .line 668
    invoke-static {}, Lcom/stericson/roottools/RootTools;->getInternals()Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->offerSuperUser(Landroid/app/Activity;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static offerSuperUser(Landroid/app/Activity;)V
    .locals 1

    .line 656
    invoke-static {}, Lcom/stericson/roottools/RootTools;->getInternals()Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->offerSuperUser(Landroid/app/Activity;)V

    return-void
.end method

.method public static remount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 687
    new-instance v0, Lcom/stericson/roottools/internal/Remounter;

    invoke-direct {v0}, Lcom/stericson/roottools/internal/Remounter;-><init>()V

    .line 689
    invoke-virtual {v0, p0, p1}, Lcom/stericson/roottools/internal/Remounter;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static remount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 694
    new-instance v0, Lcom/stericson/roottools/internal/Remounter;

    invoke-direct {v0, p2}, Lcom/stericson/roottools/internal/Remounter;-><init>(Ljava/lang/String;)V

    .line 696
    invoke-virtual {v0, p0, p1}, Lcom/stericson/roottools/internal/Remounter;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static runBinary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 720
    new-instance v0, Lcom/stericson/roottools/internal/Runner;

    invoke-direct {v0, p0, p1, p2}, Lcom/stericson/roottools/internal/Runner;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-virtual {v0}, Lcom/stericson/roottools/internal/Runner;->start()V

    return-void
.end method

.method public static runShellCommand(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 736
    invoke-virtual {p0, p1}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    return-void
.end method

.method public static setRim(Lcom/stericson/roottools/internal/RootToolsInternalMethods;)V
    .locals 0

    sput-object p0, Lcom/stericson/roottools/RootTools;->rim:Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    return-void
.end method
