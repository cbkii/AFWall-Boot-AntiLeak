.class public final Lorg/xbill/DNS/hosts/HostsFileParser;
.super Ljava/lang/Object;
.source "HostsFileParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/hosts/HostsFileParser$LineData;
    }
.end annotation


# static fields
.field private static final MAX_FULL_CACHE_FILE_SIZE_BYTES:I = 0x4000

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final clearCacheOnChange:Z

.field private final hostsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private isEntireFileParsed:Z

.field private lastFileReadTime:Ljava/time/Instant;

.field private final path:Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/xbill/DNS/hosts/HostsFileParser;

    .line 30
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/hosts/HostsFileParser;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "os.name"

    .line 48
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SystemRoot"

    .line 49
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\System32\\drivers\\etc\\hosts"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/etc/hosts"

    .line 50
    invoke-static {v1, v0}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    .line 47
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/hosts/HostsFileParser;-><init>(Ljava/nio/file/Path;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1

    const/4 v0, 0x1

    .line 61
    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/hosts/HostsFileParser;-><init>(Ljava/nio/file/Path;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Z)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/hosts/HostsFileParser;->hostsCache:Ljava/util/Map;

    .line 37
    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/hosts/HostsFileParser;->lastFileReadTime:Ljava/time/Instant;

    const-string v0, "path is required"

    .line 71
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/hosts/HostsFileParser;->path:Ljava/nio/file/Path;

    iput-boolean p2, p0, Lorg/xbill/DNS/hosts/HostsFileParser;->clearCacheOnChange:Z

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/nio/file/LinkOption;

    .line 73
    invoke-static {p1, p2}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "path must be a file"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getLineTokens(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/16 v0, 0x23

    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    const/4 v1, 0x0

    .line 205
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private key(Lorg/xbill/DNS/Name;I)Ljava/lang/String;
    .locals 1

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x9

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private parseEntireHostsFile()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/hosts/HostsFileParser;->path:Ljava/nio/file/Path;

    .line 118
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v0

    const/4 v1, 0x0

    .line 119
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    add-int/2addr v1, v3

    .line 120
    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/hosts/HostsFileParser;->parseLine(ILjava/lang/String;)Lorg/xbill/DNS/hosts/HostsFileParser$LineData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 122
    iget-object v4, v2, Lorg/xbill/DNS/hosts/HostsFileParser$LineData;->names:Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/xbill/DNS/Name;

    .line 124
    invoke-virtual {v5, v3}, Lorg/xbill/DNS/Name;->toString(Z)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Lorg/xbill/DNS/hosts/HostsFileParser$LineData;->address:[B

    invoke-static {v6, v7}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v6

    iget-object v7, p0, Lorg/xbill/DNS/hosts/HostsFileParser;->hostsCache:Ljava/util/Map;

    .line 125
    iget v8, v2, Lorg/xbill/DNS/hosts/HostsFileParser$LineData;->type:I

    invoke-direct {p0, v5, v8}, Lorg/xbill/DNS/hosts/HostsFileParser;->key(Lorg/xbill/DNS/Name;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5, v6}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_2
    iput-boolean v3, p0, Lorg/xbill/DNS/hosts/HostsFileParser;->isEntireFileParsed:Z

    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 118
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
.end method

.method private parseLine(ILjava/lang/String;)Lorg/xbill/DNS/hosts/HostsFileParser$LineData;
    .locals 6

    .line 163
    invoke-direct {p0, p2}, Lorg/xbill/DNS/hosts/HostsFileParser;->getLineTokens(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 164
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 169
    aget-object v3, p2, v0

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v3

    if-nez v3, :cond_1

    .line 171
    aget-object v3, p2, v0

    invoke-static {v3, v2}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v3

    const/16 v5, 0x1c

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    :goto_0
    if-nez v3, :cond_2

    sget-object v3, Lorg/xbill/DNS/hosts/HostsFileParser;->log:Lorg/slf4j/Logger;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 176
    aget-object p2, p2, v0

    aput-object p2, v5, v0

    iget-object p2, p0, Lorg/xbill/DNS/hosts/HostsFileParser;->path:Ljava/nio/file/Path;

    aput-object p2, v5, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    const-string p1, "Could not decode address {}, {}#L{}"

    invoke-interface {v3, p1, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 181
    :cond_2
    invoke-static {p2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    const-wide/16 v0, 0x1

    .line 182
    invoke-static {p2, v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;J)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lorg/xbill/DNS/hosts/HostsFileParser$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lorg/xbill/DNS/hosts/HostsFileParser$$ExternalSyntheticLambda9;-><init>(Lorg/xbill/DNS/hosts/HostsFileParser;I)V

    .line 183
    invoke-static {p2, v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/xbill/DNS/hosts/HostsFileParser$$ExternalSyntheticLambda10;

    invoke-direct {p2}, Lorg/xbill/DNS/hosts/HostsFileParser$$ExternalSyntheticLambda10;-><init>()V

    .line 184
    invoke-static {p1, p2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/xbill/DNS/hosts/HostsFileParser$$ExternalSyntheticLambda11;

    invoke-direct {p2, p1}, Lorg/xbill/DNS/hosts/HostsFileParser$$ExternalSyntheticLambda11;-><init>(Ljava/util/stream/Stream;)V

    .line 186
    new-instance p1, Lorg/xbill/DNS/hosts/HostsFileParser$LineData;

    invoke-direct {p1, v5, v3, p2}, Lorg/xbill/DNS/hosts/HostsFileParser$LineData;-><init>(I[BLjava/lang/Iterable;)V

    return-object p1
.end method

.method private safeName(Ljava/lang/String;I)Lorg/xbill/DNS/Name;
    .locals 3

    .line 191
    :try_start_0
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p1, v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object p1
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object v0, Lorg/xbill/DNS/hosts/HostsFileParser;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget-object v2, p0, Lorg/xbill/DNS/hosts/HostsFileParser;->path:Ljava/nio/file/Path;

    aput-object v2, v1, p1

    const/4 p1, 0x2

    .line 193
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Could not decode name {}, {}#L{}, skipping"

    invoke-interface {v0, p1, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private searchHostsFileForEntry(Lorg/xbill/DNS/Name;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/hosts/HostsFileParser;->path:Ljava/nio/file/Path;

    .line 137
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v0

    const/4 v1, 0x0

    .line 138
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 139
    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/hosts/HostsFileParser;->parseLine(ILjava/lang/String;)Lorg/xbill/DNS/hosts/HostsFileParser$LineData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 141
    iget-object v4, v2, Lorg/xbill/DNS/hosts/HostsFileParser$LineData;->names:Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/xbill/DNS/Name;

    .line 142
    invoke-virtual {v5, p1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 143
    iget v6, v2, Lorg/xbill/DNS/hosts/HostsFileParser$LineData;->type:I

    if-ne p2, v6, :cond_1

    .line 145
    invoke-virtual {v5, v3}, Lorg/xbill/DNS/Name;->toString(Z)Ljava/lang/String;

    move-result-object p1

    iget-object p2, v2, Lorg/xbill/DNS/hosts/HostsFileParser$LineData;->address:[B

    invoke-static {p1, p2}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object p1

    iget-object p2, p0, Lorg/xbill/DNS/hosts/HostsFileParser;->hostsCache:Ljava/util/Map;

    .line 146
    iget v1, v2, Lorg/xbill/DNS/hosts/HostsFileParser$LineData;->type:I

    invoke-direct {p0, v5, v1}, Lorg/xbill/DNS/hosts/HostsFileParser;->key(Lorg/xbill/DNS/Name;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_2
    return-void

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_5

    .line 137
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    throw p1
.end method

.method private validateCache()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/xbill/DNS/hosts/HostsFileParser;->clearCacheOnChange:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/xbill/DNS/hosts/HostsFileParser;->path:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    .line 213
    invoke-static {v0, v2}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/hosts/HostsFileParser;->path:Ljava/nio/file/Path;

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/attribute/FileTime;)Ljava/time/Instant;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1()Ljava/time/Instant;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lorg/xbill/DNS/hosts/HostsFileParser;->lastFileReadTime:Ljava/time/Instant;

    .line 214
    invoke-static {v0, v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/time/Instant;Ljava/time/Instant;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/xbill/DNS/hosts/HostsFileParser;->hostsCache:Ljava/util/Map;

    .line 216
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lorg/xbill/DNS/hosts/HostsFileParser;->log:Lorg/slf4j/Logger;

    const-string v3, "Local hosts database has changed at {}, clearing cache"

    .line 217
    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/xbill/DNS/hosts/HostsFileParser;->hostsCache:Ljava/util/Map;

    .line 218
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    :cond_1
    iput-boolean v1, p0, Lorg/xbill/DNS/hosts/HostsFileParser;->isEntireFileParsed:Z

    iput-object v0, p0, Lorg/xbill/DNS/hosts/HostsFileParser;->lastFileReadTime:Ljava/time/Instant;

    :cond_2
    return-void
.end method


# virtual methods
.method cacheSize()I
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/hosts/HostsFileParser;->hostsCache:Ljava/util/Map;

    .line 233
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getAddressForHost(Lorg/xbill/DNS/Name;I)Ljava/util/Optional;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Name;",
            "I)",
            "Ljava/util/Optional<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "name is required"

    .line 90
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/16 v0, 0x1c

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type can only be A or AAAA"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/xbill/DNS/hosts/HostsFileParser;->validateCache()V

    iget-object v0, p0, Lorg/xbill/DNS/hosts/HostsFileParser;->hostsCache:Ljava/util/Map;

    .line 97
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/hosts/HostsFileParser;->key(Lorg/xbill/DNS/Name;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    if-eqz v0, :cond_2

    .line 99
    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lorg/xbill/DNS/hosts/HostsFileParser;->isEntireFileParsed:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/xbill/DNS/hosts/HostsFileParser;->path:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    .line 102
    invoke-static {v0, v1}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/xbill/DNS/hosts/HostsFileParser;->path:Ljava/nio/file/Path;

    .line 106
    invoke-static {v0}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/Path;)J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    cmp-long v4, v0, v2

    if-gtz v4, :cond_4

    .line 107
    invoke-direct {p0}, Lorg/xbill/DNS/hosts/HostsFileParser;->parseEntireHostsFile()V

    goto :goto_1

    .line 109
    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/hosts/HostsFileParser;->searchHostsFileForEntry(Lorg/xbill/DNS/Name;I)V

    :goto_1
    iget-object v0, p0, Lorg/xbill/DNS/hosts/HostsFileParser;->hostsCache:Ljava/util/Map;

    .line 112
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/hosts/HostsFileParser;->key(Lorg/xbill/DNS/Name;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/InetAddress;

    invoke-static {p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 103
    :cond_5
    :goto_2
    :try_start_2
    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/Optional;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method synthetic lambda$parseLine$0$org-xbill-DNS-hosts-HostsFileParser(ILjava/lang/String;)Lorg/xbill/DNS/Name;
    .locals 0

    .line 183
    invoke-direct {p0, p2, p1}, Lorg/xbill/DNS/hosts/HostsFileParser;->safeName(Ljava/lang/String;I)Lorg/xbill/DNS/Name;

    move-result-object p1

    return-object p1
.end method
