.class final Lorg/xbill/DNS/config/JndiContextResolverConfigProvider$InnerJndiContextResolverConfigProvider;
.super Lorg/xbill/DNS/config/BaseResolverConfigProvider;
.source "JndiContextResolverConfigProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/config/JndiContextResolverConfigProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InnerJndiContextResolverConfigProvider"
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/xbill/DNS/config/JndiContextResolverConfigProvider$InnerJndiContextResolverConfigProvider;

    .line 37
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/config/JndiContextResolverConfigProvider$InnerJndiContextResolverConfigProvider;->log:Lorg/slf4j/Logger;

    .line 41
    const-class v1, Ljavax/naming/directory/DirContext;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JNDI class: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/xbill/DNS/config/BaseResolverConfigProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/xbill/DNS/config/JndiContextResolverConfigProvider$1;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/xbill/DNS/config/JndiContextResolverConfigProvider$InnerJndiContextResolverConfigProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 5

    .line 46
    invoke-virtual {p0}, Lorg/xbill/DNS/config/JndiContextResolverConfigProvider$InnerJndiContextResolverConfigProvider;->reset()V

    .line 47
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const-string v1, "java.naming.factory.initial"

    const-string v2, "com.sun.jndi.dns.DnsContextFactory"

    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dns://"

    const-string v2, "java.naming.provider.url"

    .line 50
    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 54
    :try_start_0
    new-instance v3, Ljavax/naming/directory/InitialDirContext;

    invoke-direct {v3, v0}, Ljavax/naming/directory/InitialDirContext;-><init>(Ljava/util/Hashtable;)V

    .line 55
    invoke-interface {v3}, Ljavax/naming/directory/DirContext;->getEnvironment()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    :try_start_1
    invoke-interface {v3}, Ljavax/naming/directory/DirContext;->close()V
    :try_end_1
    .catch Ljavax/naming/NamingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    move-object v1, v0

    goto :goto_0

    :catch_1
    nop

    :goto_0
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 62
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, " "

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    :goto_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 66
    :try_start_2
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 68
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 73
    :cond_1
    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    const/16 v2, 0x35

    .line 78
    :cond_2
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v3, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v4}, Lorg/xbill/DNS/config/JndiContextResolverConfigProvider$InnerJndiContextResolverConfigProvider;->addNameserver(Ljava/net/InetSocketAddress;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    sget-object v3, Lorg/xbill/DNS/config/JndiContextResolverConfigProvider$InnerJndiContextResolverConfigProvider;->log:Lorg/slf4j/Logger;

    const-string v4, "Could not parse {} as a dns server, ignoring"

    .line 80
    invoke-interface {v3, v4, v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    return-void
.end method
