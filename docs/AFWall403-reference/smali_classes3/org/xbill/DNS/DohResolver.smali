.class public final Lorg/xbill/DNS/DohResolver;
.super Ljava/lang/Object;
.source "DohResolver.java"

# interfaces
.implements Lorg/xbill/DNS/Resolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;
    }
.end annotation


# static fields
.field private static final APPLICATION_DNS_MESSAGE:Ljava/lang/String; = "application/dns-message"

.field private static final USE_HTTP_CLIENT:Z

.field private static byteArrayBodyPublisherMethod:Ljava/lang/reflect/Method;

.field private static defaultHttpRequestBuilder:Ljava/lang/Object;

.field private static httpClientBuilderBuildMethod:Ljava/lang/reflect/Method;

.field private static httpClientBuilderExecutorMethod:Ljava/lang/reflect/Method;

.field private static httpClientBuilderTimeoutMethod:Ljava/lang/reflect/Method;

.field private static httpClientNewBuilderMethod:Ljava/lang/reflect/Method;

.field private static httpClientSendAsyncMethod:Ljava/lang/reflect/Method;

.field private static final httpClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static httpResponseBodyMethod:Ljava/lang/reflect/Method;

.field private static httpResponseStatusCodeMethod:Ljava/lang/reflect/Method;

.field private static final log:Lorg/slf4j/Logger;

.field private static publisherOfByteArrayMethod:Ljava/lang/reflect/Method;

.field private static requestBuilderBuildMethod:Ljava/lang/reflect/Method;

.field private static requestBuilderCopyMethod:Ljava/lang/reflect/Method;

.field private static requestBuilderPostMethod:Ljava/lang/reflect/Method;

.field private static requestBuilderTimeoutMethod:Ljava/lang/reflect/Method;

.field private static requestBuilderUriMethod:Ljava/lang/reflect/Method;


# instance fields
.field private defaultExecutor:Ljava/util/concurrent/Executor;

.field private final idleConnectionTimeout:Ljava/time/Duration;

.field private final initialRequestLock:Lorg/xbill/DNS/AsyncSemaphore;

.field private final lastRequest:Ljava/util/concurrent/atomic/AtomicLong;

.field private final maxConcurrentRequests:Lorg/xbill/DNS/AsyncSemaphore;

.field private queryOPT:Lorg/xbill/DNS/OPTRecord;

.field private final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private timeout:Ljava/time/Duration;

.field private tsig:Lorg/xbill/DNS/TSIG;

.field private uriTemplate:Ljava/lang/String;

.field private usePost:Z


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-string v0, "application/dns-message"

    const-string v1, "ofByteArray"

    const-string v2, "newBuilder"

    const-string v3, "build"

    const-class v4, Lorg/xbill/DNS/DohResolver;

    .line 53
    invoke-static {v4}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v4

    sput-object v4, Lorg/xbill/DNS/DohResolver;->log:Lorg/slf4j/Logger;

    .line 56
    new-instance v4, Ljava/util/WeakHashMap;

    invoke-direct {v4}, Ljava/util/WeakHashMap;-><init>()V

    .line 57
    invoke-static {v4}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    sput-object v4, Lorg/xbill/DNS/DohResolver;->httpClients:Ljava/util/Map;

    const-string v4, "java.version"

    .line 100
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    const-string v4, "java.net.http.HttpClient$Builder"

    .line 102
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v6, "java.net.http.HttpClient"

    .line 103
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "java.net.http.HttpClient$Version"

    .line 104
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "java.net.http.HttpRequest$Builder"

    .line 105
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "java.net.http.HttpRequest"

    .line 106
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-string v10, "java.net.http.HttpRequest$BodyPublishers"

    .line 107
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v11, "java.net.http.HttpRequest$BodyPublisher"

    .line 108
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-string v12, "java.net.http.HttpResponse"

    .line 109
    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const-string v13, "java.net.http.HttpResponse$BodyHandlers"

    .line 110
    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const-string v14, "java.net.http.HttpResponse$BodyHandler"

    .line 111
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    const-string v15, "connectTimeout"

    const/4 v5, 0x1

    move-object/from16 v17, v0

    new-array v0, v5, [Ljava/lang/Class;

    .line 114
    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v18

    const/16 v16, 0x0

    aput-object v18, v0, v16

    .line 115
    invoke-virtual {v4, v15, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/DohResolver;->httpClientBuilderTimeoutMethod:Ljava/lang/reflect/Method;

    const-string v0, "executor"

    new-array v15, v5, [Ljava/lang/Class;

    .line 116
    const-class v18, Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    aput-object v18, v15, v5

    .line 117
    invoke-virtual {v4, v0, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/DohResolver;->httpClientBuilderExecutorMethod:Ljava/lang/reflect/Method;

    new-array v0, v5, [Ljava/lang/Class;

    .line 118
    invoke-virtual {v4, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/DohResolver;->httpClientBuilderBuildMethod:Ljava/lang/reflect/Method;

    new-array v0, v5, [Ljava/lang/Class;

    .line 121
    invoke-virtual {v6, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/DohResolver;->httpClientNewBuilderMethod:Ljava/lang/reflect/Method;

    const-string v0, "sendAsync"

    const/4 v4, 0x2

    new-array v15, v4, [Ljava/lang/Class;

    aput-object v9, v15, v5

    const/4 v5, 0x1

    aput-object v14, v15, v5

    .line 123
    invoke-virtual {v6, v0, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/DohResolver;->httpClientSendAsyncMethod:Ljava/lang/reflect/Method;

    const-string v0, "header"

    new-array v5, v4, [Ljava/lang/Class;

    .line 126
    const-class v6, Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v6, v5, v14

    const-class v6, Ljava/lang/String;

    const/4 v14, 0x1

    aput-object v6, v5, v14

    .line 127
    invoke-virtual {v8, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v5, "version"

    new-array v6, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v7, v6, v15

    .line 129
    invoke-virtual {v8, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "timeout"

    new-array v4, v14, [Ljava/lang/Class;

    .line 130
    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v4, v15

    .line 131
    invoke-virtual {v8, v6, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/xbill/DNS/DohResolver;->requestBuilderTimeoutMethod:Ljava/lang/reflect/Method;

    const-string v4, "uri"

    const/4 v6, 0x1

    new-array v14, v6, [Ljava/lang/Class;

    .line 132
    const-class v6, Ljava/net/URI;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    invoke-virtual {v8, v4, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/xbill/DNS/DohResolver;->requestBuilderUriMethod:Ljava/lang/reflect/Method;

    const-string v4, "copy"

    new-array v6, v15, [Ljava/lang/Class;

    .line 133
    invoke-virtual {v8, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/xbill/DNS/DohResolver;->requestBuilderCopyMethod:Ljava/lang/reflect/Method;

    new-array v4, v15, [Ljava/lang/Class;

    .line 134
    invoke-virtual {v8, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lorg/xbill/DNS/DohResolver;->requestBuilderBuildMethod:Ljava/lang/reflect/Method;

    const-string v3, "POST"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Class;

    aput-object v11, v6, v15

    .line 136
    invoke-virtual {v8, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lorg/xbill/DNS/DohResolver;->requestBuilderPostMethod:Ljava/lang/reflect/Method;

    new-array v3, v15, [Ljava/lang/Class;

    .line 139
    invoke-virtual {v9, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v3, [B

    aput-object v3, v4, v15

    .line 143
    invoke-virtual {v10, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lorg/xbill/DNS/DohResolver;->publisherOfByteArrayMethod:Ljava/lang/reflect/Method;

    new-array v3, v15, [Ljava/lang/Class;

    .line 146
    invoke-virtual {v13, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/DohResolver;->byteArrayBodyPublisherMethod:Ljava/lang/reflect/Method;

    const-string v1, "body"

    new-array v3, v15, [Ljava/lang/Class;

    .line 149
    invoke-virtual {v12, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/DohResolver;->httpResponseBodyMethod:Ljava/lang/reflect/Method;

    const-string v1, "statusCode"

    new-array v3, v15, [Ljava/lang/Class;

    .line 150
    invoke-virtual {v12, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/DohResolver;->httpResponseStatusCodeMethod:Ljava/lang/reflect/Method;

    new-array v1, v15, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 156
    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/DohResolver;->defaultHttpRequestBuilder:Ljava/lang/Object;

    const-string v1, "HTTP_2"

    .line 158
    invoke-static {v7, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    sget-object v2, Lorg/xbill/DNS/DohResolver;->defaultHttpRequestBuilder:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v4, v3

    .line 159
    invoke-virtual {v5, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/xbill/DNS/DohResolver;->defaultHttpRequestBuilder:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const-string v2, "Content-Type"

    aput-object v2, v4, v3

    const/4 v2, 0x1

    aput-object v17, v4, v2

    .line 160
    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/xbill/DNS/DohResolver;->defaultHttpRequestBuilder:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Accept"
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    :try_start_1
    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v17, v2, v3

    .line 162
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v5, 0x1

    goto :goto_1

    :catch_0
    const/4 v4, 0x0

    :catch_1
    sget-object v0, Lorg/xbill/DNS/DohResolver;->log:Lorg/slf4j/Logger;

    const-string v1, "Java >= 11 detected, but HttpRequest not available"

    .line 170
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    :goto_1
    sput-boolean v5, Lorg/xbill/DNS/DohResolver;->USE_HTTP_CLIENT:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x2

    .line 183
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(J)Ljava/time/Duration;

    move-result-object v0

    const/16 v1, 0x64

    invoke-direct {p0, p1, v1, v0}, Lorg/xbill/DNS/DohResolver;-><init>(Ljava/lang/String;ILjava/time/Duration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/time/Duration;)V
    .locals 3

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xbill/DNS/DohResolver;->usePost:Z

    const-wide/16 v1, 0x5

    .line 79
    invoke-static {v1, v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(J)Ljava/time/Duration;

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/DohResolver;->timeout:Ljava/time/Duration;

    .line 82
    new-instance v1, Lorg/xbill/DNS/OPTRecord;

    invoke-direct {v1, v0, v0, v0}, Lorg/xbill/DNS/OPTRecord;-><init>(III)V

    iput-object v1, p0, Lorg/xbill/DNS/DohResolver;->queryOPT:Lorg/xbill/DNS/OPTRecord;

    .line 84
    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/DohResolver;->defaultExecutor:Ljava/util/concurrent/Executor;

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/xbill/DNS/DohResolver;->lastRequest:Ljava/util/concurrent/atomic/AtomicLong;

    .line 94
    new-instance v0, Lorg/xbill/DNS/AsyncSemaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/xbill/DNS/AsyncSemaphore;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/DohResolver;->initialRequestLock:Lorg/xbill/DNS/AsyncSemaphore;

    iput-object p1, p0, Lorg/xbill/DNS/DohResolver;->uriTemplate:Ljava/lang/String;

    iput-object p3, p0, Lorg/xbill/DNS/DohResolver;->idleConnectionTimeout:Ljava/time/Duration;

    if-lez p2, :cond_1

    sget-boolean p1, Lorg/xbill/DNS/DohResolver;->USE_HTTP_CLIENT:Z

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "http.maxConnections"

    const-string p3, "5"

    .line 206
    invoke-static {p1, p3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-le p2, p1, :cond_0

    move p2, p1

    .line 214
    :catch_0
    :cond_0
    new-instance p1, Lorg/xbill/DNS/AsyncSemaphore;

    invoke-direct {p1, p2}, Lorg/xbill/DNS/AsyncSemaphore;-><init>(I)V

    iput-object p1, p0, Lorg/xbill/DNS/DohResolver;->maxConcurrentRequests:Lorg/xbill/DNS/AsyncSemaphore;

    .line 216
    :try_start_1
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/DohResolver;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 218
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 202
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxConcurrentRequests must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private discardStream(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    const/16 v0, 0x1000

    :try_start_0
    new-array v0, v0, [B

    .line 425
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 428
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_1

    .line 423
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_2
    :goto_2
    return-void
.end method

.method private failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 598
    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 599
    invoke-static {v0, p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method private getHttpClient(Ljava/util/concurrent/Executor;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lorg/xbill/DNS/DohResolver;->httpClients:Ljava/util/Map;

    .line 224
    new-instance v1, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda17;-><init>(Lorg/xbill/DNS/DohResolver;)V

    invoke-static {v0, p1, v1}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private getUrl([B)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/DohResolver;->uriTemplate:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/xbill/DNS/DohResolver;->usePost:Z

    if-nez v1, :cond_0

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?dns="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/xbill/DNS/utils/base64;->toString([BZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private prepareQuery(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;
    .locals 2

    .line 625
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->clone()Lorg/xbill/DNS/Message;

    move-result-object p1

    .line 626
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->setID(I)V

    iget-object v0, p0, Lorg/xbill/DNS/DohResolver;->queryOPT:Lorg/xbill/DNS/OPTRecord;

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/DohResolver;->queryOPT:Lorg/xbill/DNS/OPTRecord;

    const/4 v1, 0x3

    .line 628
    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/DohResolver;->tsig:Lorg/xbill/DNS/TSIG;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 632
    invoke-virtual {v0, p1, v1}, Lorg/xbill/DNS/TSIG;->apply(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;)V

    :cond_1
    return-object p1
.end method

.method private sendAndGetMessageBytes(Ljava/lang/String;[BJ)Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 362
    instance-of v0, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 363
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v1, p0, Lorg/xbill/DNS/DohResolver;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/DohResolver;->timeout:Ljava/time/Duration;

    .line 366
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long/2addr v1, p3

    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/temporal/ChronoUnit;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Duration;JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v0

    .line 367
    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/time/Duration;)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 368
    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/time/Duration;)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-boolean v0, p0, Lorg/xbill/DNS/DohResolver;->usePost:Z

    if-eqz v0, :cond_1

    const-string v0, "POST"

    goto :goto_0

    :cond_1
    const-string v0, "GET"

    .line 369
    :goto_0
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v1, "application/dns-message"

    .line 370
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    .line 371
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/xbill/DNS/DohResolver;->usePost:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 373
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 374
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 377
    :cond_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 v0, 0xc8

    if-lt p2, v0, :cond_d

    const/16 v0, 0x12c

    if-lt p2, v0, :cond_3

    goto/16 :goto_5

    .line 384
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_8

    .line 387
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    new-array v1, v0, [B

    const/4 v3, 0x0

    :goto_1
    sub-int v4, v0, v3

    .line 390
    invoke-virtual {p2, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_5

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/xbill/DNS/DohResolver;->timeout:Ljava/time/Duration;

    .line 392
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, p3

    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/temporal/ChronoUnit;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Duration;JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v4

    .line 393
    invoke-static {v4}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Duration;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    .line 394
    :cond_4
    new-instance p3, Ljava/net/SocketTimeoutException;

    invoke-direct {p3}, Ljava/net/SocketTimeoutException;-><init>()V

    throw p3

    :cond_5
    if-lt v3, v0, :cond_7

    .line 400
    new-instance p3, Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;

    invoke-direct {p3, v2, v1}, Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;-><init>(I[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p2, :cond_6

    .line 415
    :try_start_2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    return-object p3

    .line 398
    :cond_7
    :try_start_3
    new-instance p3, Ljava/io/EOFException;

    const-string p4, "Could not read expected content length"

    invoke-direct {p3, p4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 402
    :cond_8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/16 v1, 0x1000

    :try_start_4
    new-array v3, v1, [B

    .line 405
    :goto_2
    invoke-virtual {p2, v3, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_a

    iget-object v5, p0, Lorg/xbill/DNS/DohResolver;->timeout:Ljava/time/Duration;

    .line 406
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, p3

    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/temporal/ChronoUnit;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Duration;JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v5

    .line 407
    invoke-static {v5}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Duration;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 410
    invoke-virtual {v0, v3, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 408
    :cond_9
    new-instance p3, Ljava/net/SocketTimeoutException;

    invoke-direct {p3}, Ljava/net/SocketTimeoutException;-><init>()V

    throw p3

    .line 412
    :cond_a
    new-instance p3, Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p4

    invoke-direct {p3, v2, p4}, Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;-><init>(I[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 413
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz p2, :cond_b

    .line 415
    :try_start_6
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_b
    return-object p3

    :catchall_0
    move-exception p3

    .line 402
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p4

    :try_start_8
    invoke-virtual {p3, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p3

    if-eqz p2, :cond_c

    .line 384
    :try_start_9
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p2

    :try_start_a
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_4
    throw p3
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception p2

    .line 416
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xbill/DNS/DohResolver;->discardStream(Ljava/io/InputStream;)V

    .line 417
    throw p2

    .line 379
    :cond_d
    :goto_5
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/xbill/DNS/DohResolver;->discardStream(Ljava/io/InputStream;)V

    .line 380
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xbill/DNS/DohResolver;->discardStream(Ljava/io/InputStream;)V

    .line 381
    new-instance p1, Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;-><init>(I[B)V

    return-object p1
.end method

.method private sendAsync11(Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Message;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Lorg/xbill/DNS/Message;",
            ">;"
        }
    .end annotation

    .line 435
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 436
    invoke-direct {p0, p1}, Lorg/xbill/DNS/DohResolver;->prepareQuery(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Message;->toWire()[B

    move-result-object v0

    .line 437
    invoke-direct {p0, v0}, Lorg/xbill/DNS/DohResolver;->getUrl([B)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    sget-object v2, Lorg/xbill/DNS/DohResolver;->requestBuilderCopyMethod:Ljava/lang/reflect/Method;

    sget-object v3, Lorg/xbill/DNS/DohResolver;->defaultHttpRequestBuilder:Ljava/lang/Object;

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    .line 443
    invoke-virtual {v2, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v2, Lorg/xbill/DNS/DohResolver;->requestBuilderUriMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/Object;

    .line 444
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    aput-object v1, v8, v6

    invoke-virtual {v2, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/xbill/DNS/DohResolver;->usePost:Z

    if-eqz v1, :cond_0

    sget-object v1, Lorg/xbill/DNS/DohResolver;->requestBuilderPostMethod:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    sget-object v8, Lorg/xbill/DNS/DohResolver;->publisherOfByteArrayMethod:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    const/4 v0, 0x0

    .line 448
    invoke-virtual {v8, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v6

    .line 447
    invoke-virtual {v1, v7, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/DohResolver;->timeout:Ljava/time/Duration;

    .line 457
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long/2addr v1, v4

    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/temporal/ChronoUnit;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Duration;JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v0

    iget-object v1, p0, Lorg/xbill/DNS/DohResolver;->initialRequestLock:Lorg/xbill/DNS/AsyncSemaphore;

    .line 459
    invoke-virtual {v1, v0}, Lorg/xbill/DNS/AsyncSemaphore;->acquire(Ljava/time/Duration;)Ljava/util/concurrent/CompletionStage;

    move-result-object v8

    new-instance v9, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda19;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda19;-><init>(Lorg/xbill/DNS/DohResolver;Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;JLjava/lang/Object;)V

    .line 460
    invoke-static {v8, v9}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    .line 469
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/function/Function;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 451
    :goto_0
    invoke-direct {p0, p1}, Lorg/xbill/DNS/DohResolver;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method private sendAsync11WithConcurrentRequestPermit(Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;JLjava/lang/Object;Lorg/xbill/DNS/AsyncSemaphore$Permit;ZLorg/xbill/DNS/AsyncSemaphore$Permit;)Ljava/util/concurrent/CompletionStage;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Message;",
            "Ljava/util/concurrent/Executor;",
            "J",
            "Ljava/lang/Object;",
            "Lorg/xbill/DNS/AsyncSemaphore$Permit;",
            "Z",
            "Lorg/xbill/DNS/AsyncSemaphore$Permit;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Lorg/xbill/DNS/Message;",
            ">;"
        }
    .end annotation

    move-object v8, p0

    move-object v0, p1

    move-object v9, p2

    move-object/from16 v1, p5

    iget-object v2, v8, Lorg/xbill/DNS/DohResolver;->timeout:Ljava/time/Duration;

    .line 528
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, v3, p3

    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/temporal/ChronoUnit;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Duration;JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v10

    .line 529
    invoke-static {v10}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Duration;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz p7, :cond_0

    .line 531
    invoke-virtual/range {p6 .. p6}, Lorg/xbill/DNS/AsyncSemaphore$Permit;->release()V

    .line 533
    :cond_0
    invoke-virtual/range {p8 .. p8}, Lorg/xbill/DNS/AsyncSemaphore$Permit;->release()V

    .line 534
    invoke-direct {p0, p1, v3}, Lorg/xbill/DNS/DohResolver;->timeoutFailedFuture(Lorg/xbill/DNS/Message;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 541
    :cond_1
    :try_start_0
    invoke-direct {p0, p2}, Lorg/xbill/DNS/DohResolver;->getHttpClient(Ljava/util/concurrent/Executor;)Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lorg/xbill/DNS/DohResolver;->requestBuilderTimeoutMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v10, v6, v7

    .line 542
    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/xbill/DNS/DohResolver;->requestBuilderBuildMethod:Ljava/lang/reflect/Method;

    new-array v6, v7, [Ljava/lang/Object;

    .line 543
    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lorg/xbill/DNS/DohResolver;->byteArrayBodyPublisherMethod:Ljava/lang/reflect/Method;

    new-array v6, v7, [Ljava/lang/Object;

    .line 544
    invoke-virtual {v4, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lorg/xbill/DNS/DohResolver;->httpClientSendAsyncMethod:Ljava/lang/reflect/Method;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    aput-object v3, v6, v5

    .line 547
    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v11

    new-instance v12, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda15;

    move-object v1, v12

    move-object v2, p0

    move-wide/from16 v3, p3

    move-object/from16 v5, p8

    move/from16 v6, p7

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda15;-><init>(Lorg/xbill/DNS/DohResolver;JLorg/xbill/DNS/AsyncSemaphore$Permit;ZLorg/xbill/DNS/AsyncSemaphore$Permit;)V

    .line 548
    invoke-static {v11, v12}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    new-instance v2, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0, p1}, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda16;-><init>(Lorg/xbill/DNS/DohResolver;Lorg/xbill/DNS/Message;)V

    .line 558
    invoke-static {v1, v2, p2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 589
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/function/Function;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 591
    invoke-static {v10}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/time/Duration;)J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 590
    invoke-static {v0, v1, v2, v3}, Lorg/xbill/DNS/TimeoutCompletableFuture;->compatTimeout(Ljava/util/concurrent/CompletableFuture;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 593
    :goto_0
    invoke-direct {p0, v0}, Lorg/xbill/DNS/DohResolver;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method private sendAsync11WithInitialRequestPermit(Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;JLjava/lang/Object;Lorg/xbill/DNS/AsyncSemaphore$Permit;)Ljava/util/concurrent/CompletionStage;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Message;",
            "Ljava/util/concurrent/Executor;",
            "J",
            "Ljava/lang/Object;",
            "Lorg/xbill/DNS/AsyncSemaphore$Permit;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Lorg/xbill/DNS/Message;",
            ">;"
        }
    .end annotation

    move-object v9, p0

    iget-object v0, v9, Lorg/xbill/DNS/DohResolver;->lastRequest:Ljava/util/concurrent/atomic/AtomicLong;

    .line 478
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 480
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v4, v9, Lorg/xbill/DNS/DohResolver;->idleConnectionTimeout:Ljava/time/Duration;

    invoke-static {v4}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Duration;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 482
    invoke-virtual/range {p6 .. p6}, Lorg/xbill/DNS/AsyncSemaphore$Permit;->release()V

    :cond_1
    iget-object v0, v9, Lorg/xbill/DNS/DohResolver;->timeout:Ljava/time/Duration;

    .line 486
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, p3

    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/temporal/ChronoUnit;

    move-result-object v1

    invoke-static {v0, v3, v4, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Duration;JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v0

    .line 487
    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Duration;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v2, :cond_2

    .line 489
    invoke-virtual/range {p6 .. p6}, Lorg/xbill/DNS/AsyncSemaphore$Permit;->release()V

    :cond_2
    const/4 v0, 0x0

    move-object v4, p1

    .line 491
    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/DohResolver;->timeoutFailedFuture(Lorg/xbill/DNS/Message;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    :cond_3
    move-object v4, p1

    iget-object v1, v9, Lorg/xbill/DNS/DohResolver;->maxConcurrentRequests:Lorg/xbill/DNS/AsyncSemaphore;

    .line 497
    invoke-virtual {v1, v0}, Lorg/xbill/DNS/AsyncSemaphore;->acquire(Ljava/time/Duration;)Ljava/util/concurrent/CompletionStage;

    move-result-object v10

    new-instance v11, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda20;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v3, p6

    move-object v5, p2

    move-wide v6, p3

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda20;-><init>(Lorg/xbill/DNS/DohResolver;ZLorg/xbill/DNS/AsyncSemaphore$Permit;Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;JLjava/lang/Object;)V

    .line 498
    invoke-static {v10, v11}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    .line 516
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/function/Function;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    return-object v0
.end method

.method private sendAsync8(Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Message;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Lorg/xbill/DNS/Message;",
            ">;"
        }
    .end annotation

    .line 316
    invoke-direct {p0, p1}, Lorg/xbill/DNS/DohResolver;->prepareQuery(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Message;->toWire()[B

    move-result-object v5

    .line 317
    invoke-direct {p0, v5}, Lorg/xbill/DNS/DohResolver;->getUrl([B)Ljava/lang/String;

    move-result-object v4

    .line 318
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-object v0, p0, Lorg/xbill/DNS/DohResolver;->maxConcurrentRequests:Lorg/xbill/DNS/AsyncSemaphore;

    iget-object v1, p0, Lorg/xbill/DNS/DohResolver;->timeout:Ljava/time/Duration;

    .line 320
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/AsyncSemaphore;->acquire(Ljava/time/Duration;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    new-instance v8, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda18;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda18;-><init>(Lorg/xbill/DNS/DohResolver;Lorg/xbill/DNS/Message;Ljava/lang/String;[BJ)V

    .line 321
    invoke-static {v0, v8, p2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    .line 350
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/function/Function;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method private timeoutFailedFuture(Lorg/xbill/DNS/Message;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xbill/DNS/Message;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 604
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Query "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getType()I

    move-result p1

    invoke-static {p1}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " timed out"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 604
    invoke-direct {p0, v0}, Lorg/xbill/DNS/DohResolver;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method private verifyTSIG(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIG;)V
    .locals 2

    if-nez p4, :cond_0

    return-void

    .line 643
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getGeneratedTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v0

    invoke-virtual {p4, p2, p3, v0}, Lorg/xbill/DNS/TSIG;->verify(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;)I

    move-result p2

    sget-object p3, Lorg/xbill/DNS/DohResolver;->log:Lorg/slf4j/Logger;

    const/4 p4, 0x4

    new-array p4, p4, [Ljava/lang/Object;

    .line 646
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getID()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p4, v1

    .line 647
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p4, v1

    .line 648
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getType()I

    move-result p1

    invoke-static {p1}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, p4, v0

    const/4 p1, 0x3

    .line 649
    invoke-static {p2}, Lorg/xbill/DNS/Rcode;->TSIGstring(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p4, p1

    const-string p1, "TSIG verify for query {}, {}/{}: {}"

    .line 644
    invoke-interface {p3, p1, p4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/DohResolver;->defaultExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getTimeout()Ljava/time/Duration;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/DohResolver;->timeout:Ljava/time/Duration;

    return-object v0
.end method

.method public getUriTemplate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/DohResolver;->uriTemplate:Ljava/lang/String;

    return-object v0
.end method

.method public isUsePost()Z
    .locals 1

    iget-boolean v0, p0, Lorg/xbill/DNS/DohResolver;->usePost:Z

    return v0
.end method

.method synthetic lambda$getHttpClient$0$org-xbill-DNS-DohResolver(Ljava/util/concurrent/Executor;)Ljava/lang/Object;
    .locals 7

    .line 0
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/xbill/DNS/DohResolver;->httpClientNewBuilderMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 232
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lorg/xbill/DNS/DohResolver;->httpClientBuilderTimeoutMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/xbill/DNS/DohResolver;->timeout:Ljava/time/Duration;

    aput-object v6, v5, v2

    .line 233
    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/xbill/DNS/DohResolver;->httpClientBuilderExecutorMethod:Ljava/lang/reflect/Method;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 234
    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/xbill/DNS/DohResolver;->httpClientBuilderBuildMethod:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    .line 235
    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    sget-object v2, Lorg/xbill/DNS/DohResolver;->log:Lorg/slf4j/Logger;

    const-string v3, "Could not create a HttpClient with for Executor {}"

    .line 237
    invoke-interface {v2, v3, p1, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method synthetic lambda$sendAsync11$2$org-xbill-DNS-DohResolver(Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;JLjava/lang/Object;Lorg/xbill/DNS/AsyncSemaphore$Permit;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;
    .locals 0

    .line 0
    if-eqz p7, :cond_0

    .line 463
    invoke-direct {p0, p1, p7}, Lorg/xbill/DNS/DohResolver;->timeoutFailedFuture(Lorg/xbill/DNS/Message;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    .line 465
    :cond_0
    invoke-direct/range {p0 .. p6}, Lorg/xbill/DNS/DohResolver;->sendAsync11WithInitialRequestPermit(Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;JLjava/lang/Object;Lorg/xbill/DNS/AsyncSemaphore$Permit;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$sendAsync11WithConcurrentRequestPermit$4$org-xbill-DNS-DohResolver(JLorg/xbill/DNS/AsyncSemaphore$Permit;ZLorg/xbill/DNS/AsyncSemaphore$Permit;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    if-nez p7, :cond_0

    iget-object p6, p0, Lorg/xbill/DNS/DohResolver;->lastRequest:Ljava/util/concurrent/atomic/AtomicLong;

    .line 551
    invoke-virtual {p6, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 553
    :cond_0
    invoke-virtual {p3}, Lorg/xbill/DNS/AsyncSemaphore$Permit;->release()V

    if-eqz p4, :cond_1

    .line 555
    invoke-virtual {p5}, Lorg/xbill/DNS/AsyncSemaphore$Permit;->release()V

    :cond_1
    return-void
.end method

.method synthetic lambda$sendAsync11WithConcurrentRequestPermit$5$org-xbill-DNS-DohResolver(Lorg/xbill/DNS/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;
    .locals 2

    .line 0
    if-eqz p3, :cond_1

    .line 561
    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "HttpTimeoutException"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 562
    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/DohResolver;->timeoutFailedFuture(Lorg/xbill/DNS/Message;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    .line 564
    :cond_0
    invoke-direct {p0, p3}, Lorg/xbill/DNS/DohResolver;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    :cond_1
    :try_start_0
    sget-object p3, Lorg/xbill/DNS/DohResolver;->httpResponseStatusCodeMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 570
    invoke-virtual {p3, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/16 v1, 0xc8

    if-lt p3, v1, :cond_2

    const/16 v1, 0x12c

    if-ge p3, v1, :cond_2

    sget-object p3, Lorg/xbill/DNS/DohResolver;->httpResponseBodyMethod:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    .line 573
    invoke-virtual {p3, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    .line 574
    new-instance p3, Lorg/xbill/DNS/Message;

    invoke-direct {p3, p2}, Lorg/xbill/DNS/Message;-><init>([B)V

    iget-object v0, p0, Lorg/xbill/DNS/DohResolver;->tsig:Lorg/xbill/DNS/TSIG;

    .line 575
    invoke-direct {p0, p1, p3, p2, v0}, Lorg/xbill/DNS/DohResolver;->verifyTSIG(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIG;)V

    goto :goto_0

    .line 577
    :cond_2
    new-instance p3, Lorg/xbill/DNS/Message;

    invoke-direct {p3}, Lorg/xbill/DNS/Message;-><init>()V

    .line 578
    invoke-virtual {p3}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Header;->setRcode(I)V

    .line 581
    :goto_0
    invoke-virtual {p3, p0}, Lorg/xbill/DNS/Message;->setResolver(Lorg/xbill/DNS/Resolver;)V

    .line 582
    invoke-static {p3}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 584
    :goto_1
    invoke-direct {p0, p1}, Lorg/xbill/DNS/DohResolver;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$sendAsync11WithInitialRequestPermit$3$org-xbill-DNS-DohResolver(ZLorg/xbill/DNS/AsyncSemaphore$Permit;Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;JLjava/lang/Object;Lorg/xbill/DNS/AsyncSemaphore$Permit;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;
    .locals 10

    .line 0
    move-object/from16 v0, p9

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 502
    invoke-virtual {p2}, Lorg/xbill/DNS/AsyncSemaphore$Permit;->release()V

    :cond_0
    move-object v9, p0

    move-object v1, p3

    .line 504
    invoke-direct {p0, p3, v0}, Lorg/xbill/DNS/DohResolver;->timeoutFailedFuture(Lorg/xbill/DNS/Message;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v9, p0

    move-object v1, p3

    move-object v0, p0

    move-object v2, p4

    move-wide v3, p5

    move-object/from16 v5, p7

    move-object v6, p2

    move v7, p1

    move-object/from16 v8, p8

    .line 506
    invoke-direct/range {v0 .. v8}, Lorg/xbill/DNS/DohResolver;->sendAsync11WithConcurrentRequestPermit(Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;JLjava/lang/Object;Lorg/xbill/DNS/AsyncSemaphore$Permit;ZLorg/xbill/DNS/AsyncSemaphore$Permit;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$sendAsync8$1$org-xbill-DNS-DohResolver(Lorg/xbill/DNS/Message;Ljava/lang/String;[BJLorg/xbill/DNS/AsyncSemaphore$Permit;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 0
    if-eqz p7, :cond_0

    .line 324
    invoke-direct {p0, p1, p7}, Lorg/xbill/DNS/DohResolver;->timeoutFailedFuture(Lorg/xbill/DNS/Message;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    .line 328
    :cond_0
    :try_start_0
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/xbill/DNS/DohResolver;->sendAndGetMessageBytes(Ljava/lang/String;[BJ)Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;

    move-result-object p2

    .line 330
    invoke-static {p2}, Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;->access$000(Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;)I

    move-result p3

    if-nez p3, :cond_1

    .line 331
    new-instance p3, Lorg/xbill/DNS/Message;

    invoke-static {p2}, Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;->access$100(Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;)[B

    move-result-object p4

    invoke-direct {p3, p4}, Lorg/xbill/DNS/Message;-><init>([B)V

    .line 332
    invoke-static {p2}, Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;->access$100(Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;)[B

    move-result-object p2

    iget-object p4, p0, Lorg/xbill/DNS/DohResolver;->tsig:Lorg/xbill/DNS/TSIG;

    invoke-direct {p0, p1, p3, p2, p4}, Lorg/xbill/DNS/DohResolver;->verifyTSIG(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIG;)V

    goto :goto_0

    .line 334
    :cond_1
    new-instance p3, Lorg/xbill/DNS/Message;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lorg/xbill/DNS/Message;-><init>(I)V

    .line 335
    invoke-virtual {p3}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object p4

    invoke-static {p2}, Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;->access$000(Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;)I

    move-result p2

    invoke-virtual {p4, p2}, Lorg/xbill/DNS/Header;->setRcode(I)V

    .line 338
    :goto_0
    invoke-virtual {p3, p0}, Lorg/xbill/DNS/Message;->setResolver(Lorg/xbill/DNS/Resolver;)V

    .line 339
    invoke-static {p3}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    invoke-virtual {p6}, Lorg/xbill/DNS/AsyncSemaphore$Permit;->release()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 343
    :try_start_1
    invoke-direct {p0, p1}, Lorg/xbill/DNS/DohResolver;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    invoke-virtual {p6}, Lorg/xbill/DNS/AsyncSemaphore$Permit;->release()V

    return-object p1

    :catch_1
    move-exception p2

    .line 341
    :try_start_2
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/DohResolver;->timeoutFailedFuture(Lorg/xbill/DNS/Message;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 345
    invoke-virtual {p6}, Lorg/xbill/DNS/AsyncSemaphore$Permit;->release()V

    return-object p1

    :goto_1
    invoke-virtual {p6}, Lorg/xbill/DNS/AsyncSemaphore$Permit;->release()V

    .line 346
    throw p1
.end method

.method public synthetic send(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;
    .locals 0

    invoke-static {p0, p1}, Lorg/xbill/DNS/Resolver$-CC;->$default$send(Lorg/xbill/DNS/Resolver;Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;

    move-result-object p1

    return-object p1
.end method

.method public synthetic sendAsync(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/ResolverListener;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/xbill/DNS/Resolver$-CC;->$default$sendAsync(Lorg/xbill/DNS/Resolver;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/ResolverListener;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public sendAsync(Lorg/xbill/DNS/Message;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Message;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Lorg/xbill/DNS/Message;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/DohResolver;->defaultExecutor:Ljava/util/concurrent/Executor;

    .line 303
    invoke-virtual {p0, p1, v0}, Lorg/xbill/DNS/DohResolver;->sendAsync(Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method public sendAsync(Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Message;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Lorg/xbill/DNS/Message;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lorg/xbill/DNS/DohResolver;->USE_HTTP_CLIENT:Z

    if-eqz v0, :cond_0

    .line 309
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/DohResolver;->sendAsync11(Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1

    .line 312
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/DohResolver;->sendAsync8(Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setEDNS(I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/xbill/DNS/Resolver$-CC;->$default$setEDNS(Lorg/xbill/DNS/Resolver;I)V

    return-void
.end method

.method public setEDNS(IIILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/EDNSOption;",
            ">;)V"
        }
    .end annotation

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    if-nez p1, :cond_0

    .line 277
    new-instance p2, Lorg/xbill/DNS/OPTRecord;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    move v3, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/OPTRecord;-><init>(IIIILjava/util/List;)V

    iput-object p2, p0, Lorg/xbill/DNS/DohResolver;->queryOPT:Lorg/xbill/DNS/OPTRecord;

    goto :goto_0

    .line 281
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid EDNS version - must be 0 or -1 to disable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/xbill/DNS/DohResolver;->queryOPT:Lorg/xbill/DNS/OPTRecord;

    :goto_0
    return-void
.end method

.method public varargs synthetic setEDNS(III[Lorg/xbill/DNS/EDNSOption;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/xbill/DNS/Resolver$-CC;->$default$setEDNS(Lorg/xbill/DNS/Resolver;III[Lorg/xbill/DNS/EDNSOption;)V

    return-void
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    .line 698
    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/concurrent/ForkJoinPool;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lorg/xbill/DNS/DohResolver;->defaultExecutor:Ljava/util/concurrent/Executor;

    sget-object p1, Lorg/xbill/DNS/DohResolver;->httpClients:Ljava/util/Map;

    .line 699
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public setIgnoreTruncation(Z)V
    .locals 0

    return-void
.end method

.method public setPort(I)V
    .locals 0

    return-void
.end method

.method public setTCP(Z)V
    .locals 0

    return-void
.end method

.method public setTSIGKey(Lorg/xbill/DNS/TSIG;)V
    .locals 0

    iput-object p1, p0, Lorg/xbill/DNS/DohResolver;->tsig:Lorg/xbill/DNS/TSIG;

    return-void
.end method

.method public synthetic setTimeout(I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/xbill/DNS/Resolver$-CC;->$default$setTimeout(Lorg/xbill/DNS/Resolver;I)V

    return-void
.end method

.method public synthetic setTimeout(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/xbill/DNS/Resolver$-CC;->$default$setTimeout(Lorg/xbill/DNS/Resolver;II)V

    return-void
.end method

.method public setTimeout(Ljava/time/Duration;)V
    .locals 0

    iput-object p1, p0, Lorg/xbill/DNS/DohResolver;->timeout:Ljava/time/Duration;

    sget-object p1, Lorg/xbill/DNS/DohResolver;->httpClients:Ljava/util/Map;

    .line 293
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public setUriTemplate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/xbill/DNS/DohResolver;->uriTemplate:Ljava/lang/String;

    return-void
.end method

.method public setUsePost(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/xbill/DNS/DohResolver;->usePost:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DohResolver {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/xbill/DNS/DohResolver;->usePost:Z

    if-eqz v1, :cond_0

    const-string v1, "POST "

    goto :goto_0

    :cond_0
    const-string v1, "GET "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xbill/DNS/DohResolver;->uriTemplate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
