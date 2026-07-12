.class Lcom/topjohnwu/superuser/internal/RootServerMain;
.super Landroid/content/ContextWrapper;
.source "RootServerMain.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/topjohnwu/superuser/internal/RootServerMain$ResourcesWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/ContextWrapper;",
        "Ljava/util/concurrent/Callable<",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final CMDLINE_START_DAEMON:Ljava/lang/String; = "daemon"

.field static final CMDLINE_START_SERVICE:Ljava/lang/String; = "start"

.field static final CMDLINE_STOP_SERVICE:Ljava/lang/String; = "stop"

.field private static final attachBaseContext:Ljava/lang/reflect/Method;

.field private static final getService:Ljava/lang/reflect/Method;


# instance fields
.field private final isDaemon:Z

.field private final uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    :try_start_0
    const-string v0, "android.os.ServiceManager"

    .line 62
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 63
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/topjohnwu/superuser/internal/RootServerMain;->getService:Ljava/lang/reflect/Method;

    .line 64
    const-class v0, Landroid/content/ContextWrapper;

    const-string v1, "attachBaseContext"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/topjohnwu/superuser/internal/RootServerMain;->attachBaseContext:Ljava/lang/reflect/Method;

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 126
    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x1

    .line 127
    aget-object v4, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/topjohnwu/superuser/internal/RootServerMain;->uid:I

    const/4 v5, 0x2

    .line 128
    aget-object p1, p1, v5

    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, -0x1

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v6, "start"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_1
    const-string v6, "stop"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    :sswitch_2
    const-string v6, "daemon"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 142
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown action"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iput-boolean v1, p0, Lcom/topjohnwu/superuser/internal/RootServerMain;->isDaemon:Z

    const/4 p1, 0x0

    goto :goto_2

    :pswitch_1
    const/4 p1, 0x1

    goto :goto_1

    :pswitch_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean v3, p0, Lcom/topjohnwu/superuser/internal/RootServerMain;->isDaemon:Z

    :goto_2
    iget-boolean v6, p0, Lcom/topjohnwu/superuser/internal/RootServerMain;->isDaemon:Z

    if-eqz v6, :cond_6

    :try_start_0
    sget-object v6, Lcom/topjohnwu/superuser/internal/RootServerMain;->getService:Ljava/lang/reflect/Method;

    new-array v7, v3, [Ljava/lang/Object;

    .line 147
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/topjohnwu/superuser/internal/RootServerMain;->getServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 148
    check-cast v6, Landroid/os/IBinder;

    invoke-static {v6}, Lcom/topjohnwu/superuser/internal/IRootServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/topjohnwu/superuser/internal/IRootServiceManager;

    move-result-object v6

    if-nez v6, :cond_3

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_3
    if-eqz p1, :cond_4

    .line 153
    invoke-interface {v6, v2, v4}, Lcom/topjohnwu/superuser/internal/IRootServiceManager;->stop(Landroid/content/ComponentName;I)V

    goto :goto_3

    .line 155
    :cond_4
    invoke-interface {v6, v4}, Lcom/topjohnwu/superuser/internal/IRootServiceManager;->broadcast(I)V

    .line 157
    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    if-eqz p1, :cond_6

    goto :goto_4

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_5

    .line 162
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 163
    :cond_5
    throw v0

    :catch_0
    nop

    if-eqz p1, :cond_6

    .line 162
    :goto_4
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_6
    :try_start_1
    const-string p1, "com.lge.systemservice.core.integrity.IntegrityManager"

    .line 169
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 171
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    .line 172
    new-instance v4, Lcom/topjohnwu/superuser/internal/RootServerMain$ResourcesWrapper;

    invoke-direct {v4, p1}, Lcom/topjohnwu/superuser/internal/RootServerMain$ResourcesWrapper;-><init>(Landroid/content/res/Resources;)V

    .line 173
    const-class p1, Landroid/content/res/Resources;

    const-string v6, "mSystem"

    invoke-virtual {p1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 174
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 175
    invoke-virtual {p1, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 178
    :catch_1
    invoke-static {}, Lcom/topjohnwu/superuser/internal/RootServerMain;->getSystemContext()Landroid/content/Context;

    move-result-object p1

    iget v4, p0, Lcom/topjohnwu/superuser/internal/RootServerMain;->uid:I

    const v6, 0x186a0

    .line 180
    div-int/2addr v4, v6

    const/4 v6, 0x3

    .line 185
    :try_start_2
    const-class v7, Landroid/os/UserHandle;

    const-string v8, "of"

    new-array v9, v3, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v1

    .line 186
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    .line 188
    :catch_2
    :try_start_3
    const-class v0, Landroid/os/UserHandle;

    new-array v7, v3, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v1

    .line 189
    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 191
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "createPackageContextAsUser"

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    const-class v10, Landroid/os/UserHandle;

    aput-object v10, v9, v5

    .line 192
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    .line 194
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    aput-object v0, v8, v5

    invoke-virtual {v7, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    .line 196
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Failed to create package context as user: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IPC"

    invoke-static {v5, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 199
    :goto_7
    invoke-virtual {p0, v0}, Lcom/topjohnwu/superuser/internal/RootServerMain;->attachBaseContext(Landroid/content/Context;)V

    .line 202
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 204
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Class;

    .line 205
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 206
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    sget-object v0, Lcom/topjohnwu/superuser/internal/RootServerMain;->attachBaseContext:Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Object;

    .line 207
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4fd4e97c -> :sswitch_2
        0x360802 -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getServiceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "libsu-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getSystemContext()Landroid/content/Context;
    .locals 5

    :try_start_0
    const-string v0, "android.app.ActivityThread"

    .line 75
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "systemMain"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 76
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 77
    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "getSystemContext"

    new-array v4, v2, [Ljava/lang/Class;

    .line 78
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    .line 79
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 81
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    .line 92
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 93
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 94
    array-length v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 95
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 97
    :cond_0
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 100
    :try_start_0
    new-instance v0, Lcom/topjohnwu/superuser/internal/RootServerMain;

    invoke-direct {v0, p0}, Lcom/topjohnwu/superuser/internal/RootServerMain;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "IPC"

    const-string v1, "Error in IPCMain"

    .line 102
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 107
    :goto_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 108
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RootServerMain;->call()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public call()[Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/topjohnwu/superuser/internal/RootServerMain;->uid:I

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/topjohnwu/superuser/internal/RootServerMain;->isDaemon:Z

    .line 118
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method
