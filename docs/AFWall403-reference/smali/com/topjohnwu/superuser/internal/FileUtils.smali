.class Lcom/topjohnwu/superuser/internal/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/topjohnwu/superuser/internal/FileUtils$Flag;
    }
.end annotation


# static fields
.field private static os:Ljava/lang/Object;

.field private static sendfile:Ljava/lang/reflect/Method;

.field private static setFd:Ljava/lang/reflect/AccessibleObject;

.field private static splice:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createFileDescriptor(I)Ljava/io/FileDescriptor;
    .locals 6

    sget-object v0, Lcom/topjohnwu/superuser/internal/FileUtils;->setFd:Ljava/lang/reflect/AccessibleObject;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 213
    :try_start_0
    const-class v0, Ljava/io/FileDescriptor;

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/topjohnwu/superuser/internal/FileUtils;->setFd:Ljava/lang/reflect/AccessibleObject;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    :try_start_1
    const-class v0, Ljava/io/FileDescriptor;

    const-string v3, "setInt$"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/topjohnwu/superuser/internal/FileUtils;->setFd:Ljava/lang/reflect/AccessibleObject;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    sget-object v0, Lcom/topjohnwu/superuser/internal/FileUtils;->setFd:Ljava/lang/reflect/AccessibleObject;

    .line 220
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_0
    :try_start_2
    sget-object v0, Lcom/topjohnwu/superuser/internal/FileUtils;->setFd:Ljava/lang/reflect/AccessibleObject;

    .line 223
    instance-of v3, v0, Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_1

    .line 224
    check-cast v0, Ljava/lang/reflect/Constructor;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/FileDescriptor;

    return-object p0

    .line 226
    :cond_1
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    sget-object v3, Lcom/topjohnwu/superuser/internal/FileUtils;->setFd:Ljava/lang/reflect/AccessibleObject;

    .line 227
    check-cast v3, Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-virtual {v3, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :catch_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static createTempFIFO()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "libsu-fifo-"

    const/4 v1, 0x0

    .line 203
    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 205
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a4

    invoke-static {v1, v2}, Landroid/system/Os;->mkfifo(Ljava/lang/String;I)V

    return-object v0
.end method

.method static modeToFlag(I)Lcom/topjohnwu/superuser/internal/FileUtils$Flag;
    .locals 4

    .line 120
    new-instance v0, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;-><init>()V

    const/high16 v1, 0x30000000

    and-int v2, p0, v1

    const/4 v3, 0x1

    if-ne v2, v1, :cond_0

    .line 122
    iput-boolean v3, v0, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;->read:Z

    .line 123
    iput-boolean v3, v0, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;->write:Z

    goto :goto_0

    :cond_0
    const/high16 v1, 0x20000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_1

    .line 125
    iput-boolean v3, v0, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;->write:Z

    goto :goto_0

    :cond_1
    const/high16 v1, 0x10000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_9

    .line 127
    iput-boolean v3, v0, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;->read:Z

    :goto_0
    const/high16 v1, 0x8000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_2

    .line 132
    iput-boolean v3, v0, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;->create:Z

    :cond_2
    const/high16 v1, 0x4000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_3

    .line 135
    iput-boolean v3, v0, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;->truncate:Z

    :cond_3
    const/high16 v1, 0x2000000

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_4

    .line 138
    iput-boolean v3, v0, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;->append:Z

    .line 142
    :cond_4
    iget-boolean p0, v0, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;->append:Z

    if-eqz p0, :cond_6

    iget-boolean p0, v0, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;->read:Z

    if-nez p0, :cond_5

    goto :goto_1

    .line 143
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "READ + APPEND not allowed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 145
    :cond_6
    :goto_1
    iget-boolean p0, v0, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;->append:Z

    if-eqz p0, :cond_8

    iget-boolean p0, v0, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;->truncate:Z

    if-nez p0, :cond_7

    goto :goto_2

    .line 146
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "APPEND + TRUNCATE not allowed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    return-object v0

    .line 129
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static modeToOptions(I)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/nio/file/OpenOption;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-static {}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m()Landroid/util/ArraySet;

    move-result-object v0

    const/high16 v1, 0x30000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_0

    .line 98
    invoke-static {}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m()Ljava/nio/file/StandardOpenOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-static {}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m$1()Ljava/nio/file/StandardOpenOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/high16 v1, 0x20000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_1

    .line 101
    invoke-static {}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m$1()Ljava/nio/file/StandardOpenOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/high16 v1, 0x10000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_5

    .line 103
    invoke-static {}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m()Ljava/nio/file/StandardOpenOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    const/high16 v1, 0x8000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_2

    .line 108
    invoke-static {}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m$2()Ljava/nio/file/StandardOpenOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    const/high16 v1, 0x4000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_3

    .line 111
    invoke-static {}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m$3()Ljava/nio/file/StandardOpenOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    const/high16 v1, 0x2000000

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_4

    .line 114
    invoke-static {}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m$4()Ljava/nio/file/StandardOpenOption;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0

    .line 105
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static modeToPosix(I)I
    .locals 3

    const/high16 v0, 0x30000000

    and-int v1, p0, v0

    if-ne v1, v0, :cond_0

    .line 74
    sget v0, Landroid/system/OsConstants;->O_RDWR:I

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000000

    and-int v1, p0, v0

    if-ne v1, v0, :cond_1

    .line 76
    sget v0, Landroid/system/OsConstants;->O_WRONLY:I

    goto :goto_0

    :cond_1
    const/high16 v0, 0x10000000

    and-int v1, p0, v0

    if-ne v1, v0, :cond_5

    .line 78
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    :goto_0
    const/high16 v1, 0x8000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_2

    .line 83
    sget v1, Landroid/system/OsConstants;->O_CREAT:I

    or-int/2addr v0, v1

    :cond_2
    const/high16 v1, 0x4000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_3

    .line 86
    sget v1, Landroid/system/OsConstants;->O_TRUNC:I

    or-int/2addr v0, v1

    :cond_3
    const/high16 v1, 0x2000000

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_4

    .line 89
    sget p0, Landroid/system/OsConstants;->O_APPEND:I

    or-int/2addr v0, p0

    :cond_4
    return v0

    .line 80
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/util/MutableLong;J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    const-string v0, "sendfile"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x0

    if-lt v1, v2, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    invoke-static {}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m()V

    iget-wide v0, p2, Landroid/util/MutableLong;->value:J

    invoke-static {v0, v1}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(J)Landroid/system/Int64Ref;

    move-result-object v3

    .line 178
    :goto_0
    invoke-static {p0, p1, v3, p3, p4}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;J)J

    move-result-wide p0

    if-eqz v3, :cond_1

    .line 180
    invoke-static {v3}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Landroid/system/Int64Ref;)J

    move-result-wide p3

    iput-wide p3, p2, Landroid/util/MutableLong;->value:J

    :cond_1
    return-wide p0

    :cond_2
    :try_start_0
    sget-object v1, Lcom/topjohnwu/superuser/internal/FileUtils;->os:Ljava/lang/Object;

    if-nez v1, :cond_3

    const-string v1, "libcore.io.Libcore"

    .line 185
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "os"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/topjohnwu/superuser/internal/FileUtils;->os:Ljava/lang/Object;

    :cond_3
    sget-object v1, Lcom/topjohnwu/superuser/internal/FileUtils;->sendfile:Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-nez v1, :cond_4

    sget-object v1, Lcom/topjohnwu/superuser/internal/FileUtils;->os:Ljava/lang/Object;

    .line 188
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/io/FileDescriptor;

    aput-object v8, v7, v5

    const-class v8, Ljava/io/FileDescriptor;

    aput-object v8, v7, v4

    const-class v8, Landroid/util/MutableLong;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    invoke-virtual {v1, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/topjohnwu/superuser/internal/FileUtils;->sendfile:Ljava/lang/reflect/Method;

    :cond_4
    sget-object v1, Lcom/topjohnwu/superuser/internal/FileUtils;->sendfile:Ljava/lang/reflect/Method;

    sget-object v7, Lcom/topjohnwu/superuser/internal/FileUtils;->os:Ljava/lang/Object;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v5

    aput-object p1, v6, v4

    aput-object p2, v6, v3

    .line 192
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v6, v2

    invoke-virtual {v1, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    .line 196
    :catch_0
    new-instance p0, Landroid/system/ErrnoException;

    sget p1, Landroid/system/OsConstants;->ENOSYS:I

    invoke-direct {p0, v0, p1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw p0

    :catch_1
    move-exception p0

    .line 194
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Landroid/system/ErrnoException;

    throw p0
.end method

.method static splice(Ljava/io/FileDescriptor;Landroid/system/Int64Ref;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;JI)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    const-string v0, "splice"

    :try_start_0
    sget-object v1, Lcom/topjohnwu/superuser/internal/FileUtils;->splice:Ljava/lang/reflect/Method;

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x6

    if-nez v1, :cond_0

    .line 159
    const-class v1, Landroid/system/Os;

    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Ljava/io/FileDescriptor;

    aput-object v10, v9, v7

    invoke-static {}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v9, v6

    const-class v10, Ljava/io/FileDescriptor;

    aput-object v10, v9, v5

    invoke-static {}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v9, v4

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v2

    invoke-virtual {v1, v0, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/topjohnwu/superuser/internal/FileUtils;->splice:Ljava/lang/reflect/Method;

    :cond_0
    sget-object v1, Lcom/topjohnwu/superuser/internal/FileUtils;->splice:Ljava/lang/reflect/Method;

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v7

    aput-object p1, v8, v6

    aput-object p2, v8, v5

    aput-object p3, v8, v4

    .line 164
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v3

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 168
    :catch_0
    new-instance v1, Landroid/system/ErrnoException;

    sget v2, Landroid/system/OsConstants;->ENOSYS:I

    invoke-direct {v1, v0, v2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v1

    :catch_1
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Landroid/system/ErrnoException;

    throw v0
.end method
