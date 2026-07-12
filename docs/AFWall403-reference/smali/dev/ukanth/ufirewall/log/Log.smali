.class public Ldev/ukanth/ufirewall/log/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/ukanth/ufirewall/log/Log$LogEntry;
    }
.end annotation


# static fields
.field public static final LOG_DEBUG:I = 0x0

.field public static final LOG_ERROR:I = 0x4

.field public static final LOG_INFO:I = 0x2

.field public static final LOG_VERBOSE:I = 0x1

.field public static final LOG_WARNING:I = 0x3

.field public static final LOG_WTF:I = 0x5

.field private static final MAX_ENTRIES:I = 0x200

.field private static final circ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ldev/ukanth/ufirewall/log/Log$LogEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Ldev/ukanth/ufirewall/log/Log;->circ:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized circLog(ILjava/lang/String;)V
    .locals 3

    const-class v0, Ldev/ukanth/ufirewall/log/Log;

    monitor-enter v0

    .line 51
    :try_start_0
    new-instance v1, Ldev/ukanth/ufirewall/log/Log$LogEntry;

    invoke-direct {v1}, Ldev/ukanth/ufirewall/log/Log$LogEntry;-><init>()V

    .line 52
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, v1, Ldev/ukanth/ufirewall/log/Log$LogEntry;->timestamp:Ljava/util/Date;

    .line 53
    iput p0, v1, Ldev/ukanth/ufirewall/log/Log$LogEntry;->level:I

    .line 54
    iput-object p1, v1, Ldev/ukanth/ufirewall/log/Log$LogEntry;->msg:Ljava/lang/String;

    sget-object p0, Ldev/ukanth/ufirewall/log/Log;->circ:Ljava/util/LinkedList;

    .line 56
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v2, 0x200

    if-lt p1, v2, :cond_0

    .line 57
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 59
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->circLog(ILjava/lang/String;)V

    .line 76
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->circLog(ILjava/lang/String;)V

    .line 81
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x4

    .line 115
    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->circLog(ILjava/lang/String;)V

    .line 116
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    .locals 1

    const/4 v0, 0x4

    .line 120
    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->circLog(ILjava/lang/String;)V

    .line 121
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized getLog()Ljava/lang/String;
    .locals 6

    const-class v0, Ldev/ukanth/ufirewall/log/Log;

    monitor-enter v0

    .line 63
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Ldev/ukanth/ufirewall/log/Log;->circ:Ljava/util/LinkedList;

    .line 65
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 66
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/ukanth/ufirewall/log/Log$LogEntry;

    .line 67
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Ldev/ukanth/ufirewall/log/Log$LogEntry;->timestamp:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Ldev/ukanth/ufirewall/log/Log$LogEntry;->msg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x2

    .line 95
    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->circLog(ILjava/lang/String;)V

    .line 96
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    .locals 1

    const/4 v0, 0x2

    .line 100
    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->circLog(ILjava/lang/String;)V

    .line 101
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x1

    .line 85
    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->circLog(ILjava/lang/String;)V

    .line 86
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    .locals 1

    const/4 v0, 0x1

    .line 90
    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->circLog(ILjava/lang/String;)V

    .line 91
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x3

    .line 105
    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->circLog(ILjava/lang/String;)V

    .line 106
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    .locals 1

    const/4 v0, 0x3

    .line 110
    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->circLog(ILjava/lang/String;)V

    .line 111
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x5

    .line 125
    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->circLog(ILjava/lang/String;)V

    .line 126
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    .locals 1

    const/4 v0, 0x5

    .line 130
    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->circLog(ILjava/lang/String;)V

    .line 131
    invoke-static {p0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method
