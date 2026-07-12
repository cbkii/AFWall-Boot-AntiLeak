.class Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;
.super Ljava/lang/Thread;
.source "SanityCheckRootTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/roottools/SanityCheckRootTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SanityCheckThread"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/stericson/roottools/SanityCheckRootTools;


# direct methods
.method static bridge synthetic -$$Nest$mvisualUpdate(Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/stericson/roottools/SanityCheckRootTools;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->this$0:Lcom/stericson/roottools/SanityCheckRootTools;

    .line 127
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p3, p0, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private visualUpdate(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->mHandler:Landroid/os/Handler;

    .line 418
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 419
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    .line 420
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "text"

    .line 421
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->mHandler:Landroid/os/Handler;

    .line 423
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "id"

    const-string v1, " k\n\n"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 132
    invoke-direct {p0, v3, v2}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v2, "Testing getPath"

    const/4 v4, 0x4

    .line 146
    invoke-direct {p0, v4, v2}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v2, "[ getPath ]\n"

    const/4 v5, 0x3

    .line 147
    invoke-direct {p0, v5, v2}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 150
    :try_start_0
    invoke-static {}, Lcom/stericson/roottools/RootTools;->getPath()Ljava/util/List;

    move-result-object v2

    .line 152
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 153
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 157
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-string v2, "Testing A ton of commands"

    .line 160
    invoke-direct {p0, v4, v2}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v2, "[ Ton of Commands ]\n"

    .line 161
    invoke-direct {p0, v5, v2}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0x64

    const-string v8, "/system/xbin/busybox"

    if-ge v6, v7, :cond_1

    .line 164
    invoke-static {v8}, Lcom/stericson/roottools/RootTools;->exists(Ljava/lang/String;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const-string v6, "Testing Find Binary"

    .line 167
    invoke-direct {p0, v4, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/stericson/roottools/RootTools;->isRootAvailable()Z

    move-result v6

    const-string v7, "[ Checking Root ]\n"

    .line 169
    invoke-direct {p0, v5, v7}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 170
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v6, "Testing file exists"

    .line 172
    invoke-direct {p0, v4, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v6, "[ Checking Exists() ]\n"

    .line 173
    invoke-direct {p0, v5, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 174
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/system/sbin/["

    invoke-static {v7}, Lcom/stericson/roottools/RootTools;->exists(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v6, "Testing Is Access Given"

    .line 176
    invoke-direct {p0, v4, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/stericson/roottools/RootTools;->isAccessGiven()Z

    move-result v6

    const-string v7, "[ Checking for Access to Root ]\n"

    .line 178
    invoke-direct {p0, v5, v7}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v6, "Testing Remount"

    .line 181
    invoke-direct {p0, v4, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v6, "/system"

    const-string v7, "rw"

    .line 182
    invoke-static {v6, v7}, Lcom/stericson/roottools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    const-string v7, "[ Remounting System as RW ]\n"

    .line 183
    invoke-direct {p0, v5, v7}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 184
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v6, "Testing CheckUtil"

    .line 186
    invoke-direct {p0, v4, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v6, "[ Checking busybox is setup ]\n"

    .line 187
    invoke-direct {p0, v5, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 188
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "busybox"

    invoke-static {v7}, Lcom/stericson/roottools/RootTools;->checkUtil(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v6, "Testing getBusyBoxVersion"

    .line 190
    invoke-direct {p0, v4, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v6, "[ Checking busybox version ]\n"

    .line 191
    invoke-direct {p0, v5, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 192
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/system/xbin/"

    invoke-static {v7}, Lcom/stericson/roottools/RootTools;->getBusyBoxVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    :try_start_1
    const-string v6, "Testing fixUtils"

    .line 195
    invoke-direct {p0, v4, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v6, "[ Checking Utils ]\n"

    .line 196
    invoke-direct {p0, v5, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 197
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/String;

    const-string v9, "ls"

    aput-object v9, v7, v2

    const-string v9, "rm"

    aput-object v9, v7, v3

    const-string v9, "ln"

    const/4 v10, 0x2

    aput-object v9, v7, v10

    const-string v9, "dd"

    aput-object v9, v7, v5

    const-string v9, "chmod"

    aput-object v9, v7, v4

    const-string v9, "mount"

    const/4 v10, 0x5

    aput-object v9, v7, v10

    invoke-static {v7}, Lcom/stericson/roottools/RootTools;->fixUtils([Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v6

    .line 200
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    :try_start_2
    const-string v6, "Testing getSymlink"

    .line 204
    invoke-direct {p0, v4, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v6, "[ Checking [[ for symlink ]\n"

    .line 205
    invoke-direct {p0, v5, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 206
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/system/bin/[["

    invoke-static {v7}, Lcom/stericson/roottools/RootTools;->getSymlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v6

    .line 209
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    const-string v6, "Testing getInode"

    .line 212
    invoke-direct {p0, v4, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v6, "[ Checking Inodes ]\n"

    .line 213
    invoke-direct {p0, v5, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 214
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/system/bin/busybox"

    invoke-static {v7}, Lcom/stericson/roottools/RootTools;->getInode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v6, "Testing GetBusyBoxapplets"

    .line 216
    invoke-direct {p0, v4, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    :try_start_3
    const-string v6, "[ Getting all available Busybox applets ]\n"

    .line 219
    invoke-direct {p0, v5, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v6, "/data/data/stericson.busybox/files/bb/busybox"

    .line 220
    invoke-static {v6}, Lcom/stericson/roottools/RootTools;->getBusyBoxApplets(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 221
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v6

    .line 226
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const-string v6, "Testing GetBusyBox version in a special directory!"

    .line 229
    invoke-direct {p0, v4, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    :try_start_4
    const-string v6, "[ Testing GetBusyBox version in a special directory! ]\n"

    .line 232
    invoke-direct {p0, v5, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v6, "/data/data/stericson.busybox/files/bb/"

    .line 233
    invoke-static {v6}, Lcom/stericson/roottools/RootTools;->getBusyBoxVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 235
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception v6

    .line 239
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    const-string v6, "Testing getFilePermissionsSymlinks"

    .line 242
    invoke-direct {p0, v4, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 243
    invoke-static {v8}, Lcom/stericson/roottools/RootTools;->getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/stericson/roottools/containers/Permissions;

    move-result-object v6

    const-string v7, "[ Checking busybox permissions and symlink ]\n"

    .line 244
    invoke-direct {p0, v5, v7}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    if-eqz v6, :cond_3

    .line 247
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Symlink: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/stericson/roottools/containers/Permissions;->getSymlink()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 248
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Group Permissions: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/stericson/roottools/containers/Permissions;->getGroupPermissions()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 249
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Owner Permissions: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/stericson/roottools/containers/Permissions;->getOtherPermissions()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 250
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Permissions: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/stericson/roottools/containers/Permissions;->getPermissions()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 251
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Type: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/stericson/roottools/containers/Permissions;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 252
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "User Permissions: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/stericson/roottools/containers/Permissions;->getUserPermissions()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v1}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    goto :goto_6

    :cond_3
    const-string v1, "Permissions == null k\n\n"

    .line 254
    invoke-direct {p0, v5, v1}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    :goto_6
    const-string v1, "Testing output capture"

    .line 259
    invoke-direct {p0, v4, v1}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v1, "[ busybox ash --help ]\n"

    .line 260
    invoke-direct {p0, v5, v1}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 263
    :try_start_5
    invoke-static {v3}, Lcom/stericson/roottools/RootTools;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object v1

    .line 264
    new-instance v6, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread$1;

    new-array v7, v3, [Ljava/lang/String;

    const-string v8, "busybox ash --help"

    aput-object v8, v7, v2

    invoke-direct {v6, p0, v2, v7}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread$1;-><init>(Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;I[Ljava/lang/String;)V

    .line 274
    invoke-virtual {v1, v6}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    const-string v6, "getevent - /dev/input/event0"

    .line 276
    invoke-direct {p0, v4, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v6, "[ getevent - /dev/input/event0 ]\n"

    .line 277
    invoke-direct {p0, v5, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 279
    new-instance v6, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread$2;

    new-array v7, v3, [Ljava/lang/String;

    const-string v8, "getevent /dev/input/event0"

    aput-object v8, v7, v2

    invoke-direct {v6, p0, v2, v2, v7}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread$2;-><init>(Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;II[Ljava/lang/String;)V

    .line 287
    invoke-virtual {v1, v6}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_7

    :catch_5
    move-exception v1

    .line 290
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    const-string v1, "Switching RootContext - SYSTEM_APP"

    .line 293
    invoke-direct {p0, v4, v1}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v1, "[ Switching Root Context - SYSTEM_APP ]\n"

    .line 294
    invoke-direct {p0, v5, v1}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 297
    :try_start_6
    sget-object v1, Lcom/stericson/rootshell/execution/Shell$ShellContext;->SYSTEM_APP:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    invoke-static {v3, v1}, Lcom/stericson/roottools/RootTools;->getShell(ZLcom/stericson/rootshell/execution/Shell$ShellContext;)Lcom/stericson/rootshell/execution/Shell;

    move-result-object v1

    .line 298
    new-instance v6, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread$3;

    new-array v7, v3, [Ljava/lang/String;

    aput-object v0, v7, v2

    invoke-direct {v6, p0, v2, v7}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread$3;-><init>(Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;I[Ljava/lang/String;)V

    .line 308
    invoke-virtual {v1, v6}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    const-string v6, "Testing PM"

    .line 310
    invoke-direct {p0, v4, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v6, "[ Testing pm list packages -d ]\n"

    .line 311
    invoke-direct {p0, v5, v6}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 313
    new-instance v6, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread$4;

    new-array v7, v3, [Ljava/lang/String;

    const-string v8, "sh /system/bin/pm list packages -d"

    aput-object v8, v7, v2

    invoke-direct {v6, p0, v2, v7}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread$4;-><init>(Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;I[Ljava/lang/String;)V

    .line 323
    invoke-virtual {v1, v6}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_8

    :catch_6
    move-exception v1

    .line 326
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    const-string v1, "Switching RootContext - UNTRUSTED"

    .line 329
    invoke-direct {p0, v4, v1}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v1, "[ Switching Root Context - UNTRUSTED ]\n"

    .line 330
    invoke-direct {p0, v5, v1}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 333
    :try_start_7
    sget-object v1, Lcom/stericson/rootshell/execution/Shell$ShellContext;->UNTRUSTED_APP:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    invoke-static {v3, v1}, Lcom/stericson/roottools/RootTools;->getShell(ZLcom/stericson/rootshell/execution/Shell$ShellContext;)Lcom/stericson/rootshell/execution/Shell;

    move-result-object v1

    .line 334
    new-instance v6, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread$5;

    new-array v7, v3, [Ljava/lang/String;

    aput-object v0, v7, v2

    invoke-direct {v6, p0, v2, v7}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread$5;-><init>(Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;I[Ljava/lang/String;)V

    .line 344
    invoke-virtual {v1, v6}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_9

    :catch_7
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9
    const-string v0, "Testing df"

    .line 350
    invoke-direct {p0, v4, v0}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v0, "/data"

    .line 351
    invoke-static {v0}, Lcom/stericson/roottools/RootTools;->getSpace(Ljava/lang/String;)J

    move-result-wide v0

    const-string v4, "[ Checking /data partition size]\n"

    .line 352
    invoke-direct {p0, v5, v4}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 353
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "k\n\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 356
    :try_start_8
    invoke-static {v3}, Lcom/stericson/roottools/RootTools;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object v0

    .line 358
    new-instance v1, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread$6;

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "echo done"

    aput-object v4, v3, v2

    const/16 v4, 0x2a

    invoke-direct {v1, p0, v4, v2, v3}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread$6;-><init>(Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;IZ[Ljava/lang/String;)V

    .line 409
    invoke-virtual {v0, v1}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_a

    :catch_8
    move-exception v0

    .line 412
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a
    return-void
.end method
