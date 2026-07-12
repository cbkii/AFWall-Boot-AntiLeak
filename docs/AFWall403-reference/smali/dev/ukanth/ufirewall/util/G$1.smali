.class Ldev/ukanth/ufirewall/util/G$1;
.super Ljava/lang/Object;
.source "G.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/util/G;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/util/G;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/util/G;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/G$1;->this$0:Ldev/ukanth/ufirewall/util/G;

    .line 1001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .line 1005
    instance-of v0, p2, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "AFWall"

    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pool-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Caught SuperUser library RejectedExecutionException during app shutdown, ignoring to prevent crash"

    .line 1007
    invoke-static {v1, p1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1012
    :cond_0
    instance-of v0, p2, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_1

    .line 1013
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_1

    const-string p1, "Caught SuperUser library ExecutionException with InterruptedIOException during app shutdown, ignoring to prevent crash"

    .line 1014
    invoke-static {v1, p1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1019
    :cond_1
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->-$$Nest$sfgetdefaultExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1020
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->-$$Nest$sfgetdefaultExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method
