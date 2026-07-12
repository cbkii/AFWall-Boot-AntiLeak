.class public Lorg/xbill/DNS/Compression;
.super Ljava/lang/Object;
.source "Compression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/Compression$Entry;
    }
.end annotation


# static fields
.field private static final MAX_POINTER:I = 0x3fff

.field private static final TABLE_SIZE:I = 0x11

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final table:[Lorg/xbill/DNS/Compression$Entry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/xbill/DNS/Compression;

    .line 15
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/Compression;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    new-array v0, v0, [Lorg/xbill/DNS/Compression$Entry;

    iput-object v0, p0, Lorg/xbill/DNS/Compression;->table:[Lorg/xbill/DNS/Compression$Entry;

    return-void
.end method


# virtual methods
.method public add(ILorg/xbill/DNS/Name;)V
    .locals 3

    const/16 v0, 0x3fff

    if-le p1, v0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-virtual {p2}, Lorg/xbill/DNS/Name;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x11

    .line 44
    new-instance v1, Lorg/xbill/DNS/Compression$Entry;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Compression$Entry;-><init>(Lorg/xbill/DNS/Compression$1;)V

    .line 45
    iput-object p2, v1, Lorg/xbill/DNS/Compression$Entry;->name:Lorg/xbill/DNS/Name;

    .line 46
    iput p1, v1, Lorg/xbill/DNS/Compression$Entry;->pos:I

    iget-object v2, p0, Lorg/xbill/DNS/Compression;->table:[Lorg/xbill/DNS/Compression$Entry;

    .line 47
    aget-object v2, v2, v0

    iput-object v2, v1, Lorg/xbill/DNS/Compression$Entry;->next:Lorg/xbill/DNS/Compression$Entry;

    iget-object v2, p0, Lorg/xbill/DNS/Compression;->table:[Lorg/xbill/DNS/Compression$Entry;

    .line 48
    aput-object v1, v2, v0

    sget-object v0, Lorg/xbill/DNS/Compression;->log:Lorg/slf4j/Logger;

    const-string v1, "Adding {} at {}"

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p2, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public get(Lorg/xbill/DNS/Name;)I
    .locals 4

    .line 59
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x11

    iget-object v1, p0, Lorg/xbill/DNS/Compression;->table:[Lorg/xbill/DNS/Compression$Entry;

    .line 61
    aget-object v0, v1, v0

    const/4 v1, -0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 62
    iget-object v2, v0, Lorg/xbill/DNS/Compression$Entry;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v2, p1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    iget v1, v0, Lorg/xbill/DNS/Compression$Entry;->pos:I

    .line 61
    :cond_0
    iget-object v0, v0, Lorg/xbill/DNS/Compression$Entry;->next:Lorg/xbill/DNS/Compression$Entry;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/xbill/DNS/Compression;->log:Lorg/slf4j/Logger;

    const-string v2, "Looking for {}, found {}"

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, p1, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1
.end method
