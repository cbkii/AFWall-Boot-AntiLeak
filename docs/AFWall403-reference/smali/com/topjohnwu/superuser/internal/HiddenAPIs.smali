.class Lcom/topjohnwu/superuser/internal/HiddenAPIs;
.super Ljava/lang/Object;
.source "HiddenAPIs.java"


# static fields
.field public static final FLAG_RECEIVER_FROM_SHELL:I

.field private static addService:Ljava/lang/reflect/Method;

.field private static attachBaseContext:Ljava/lang/reflect/Method;

.field private static setAppName:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x400000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/topjohnwu/superuser/internal/HiddenAPIs;->FLAG_RECEIVER_FROM_SHELL:I

    :try_start_0
    const-string v0, "android.os.ServiceManager"

    .line 48
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v3, 0x1c

    const-string v4, "addService"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-lt v1, v3, :cond_1

    const/4 v1, 0x4

    :try_start_1
    new-array v1, v1, [Ljava/lang/Class;

    .line 51
    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const-class v3, Landroid/os/IBinder;

    aput-object v3, v1, v6

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x3

    aput-object v3, v1, v7

    invoke-virtual {v0, v4, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/topjohnwu/superuser/internal/HiddenAPIs;->addService:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :cond_1
    :try_start_2
    sget-object v1, Lcom/topjohnwu/superuser/internal/HiddenAPIs;->addService:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    new-array v1, v5, [Ljava/lang/Class;

    .line 58
    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const-class v3, Landroid/os/IBinder;

    aput-object v3, v1, v6

    invoke-virtual {v0, v4, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/topjohnwu/superuser/internal/HiddenAPIs;->addService:Ljava/lang/reflect/Method;

    .line 61
    :cond_2
    const-class v0, Landroid/content/ContextWrapper;

    const-string v1, "attachBaseContext"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/topjohnwu/superuser/internal/HiddenAPIs;->attachBaseContext:Ljava/lang/reflect/Method;

    .line 62
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string v0, "android.ddm.DdmHandleAppName"

    .line 64
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setAppName"

    new-array v3, v5, [Ljava/lang/Class;

    .line 65
    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/topjohnwu/superuser/internal/HiddenAPIs;->setAppName:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "IPC"

    .line 67
    invoke-static {v1, v0}, Lcom/topjohnwu/superuser/internal/Utils;->err(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 6

    :try_start_0
    sget-object v0, Lcom/topjohnwu/superuser/internal/HiddenAPIs;->addService:Ljava/lang/reflect/Method;

    .line 81
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-ne v0, v4, :cond_0

    sget-object v0, Lcom/topjohnwu/superuser/internal/HiddenAPIs;->addService:Ljava/lang/reflect/Method;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    aput-object p1, v4, v1

    .line 83
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v4, p1

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/topjohnwu/superuser/internal/HiddenAPIs;->addService:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v1

    .line 85
    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "IPC"

    .line 88
    invoke-static {p1, p0}, Lcom/topjohnwu/superuser/internal/Utils;->err(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static attachBaseContext(Ljava/lang/Object;Landroid/content/Context;)V
    .locals 3

    .line 93
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/topjohnwu/superuser/internal/HiddenAPIs;->attachBaseContext:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 95
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static setAppName(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/topjohnwu/superuser/internal/HiddenAPIs;->setAppName:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 75
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
