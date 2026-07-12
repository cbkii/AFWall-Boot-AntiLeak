.class public Lorg/xbill/DNS/utils/base16;
.super Ljava/lang/Object;
.source "base16.java"


# static fields
.field private static final BASE_16_CHARS:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)[B
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 70
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-array p0, v2, [B

    return-object p0

    .line 74
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    .line 75
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 76
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_2

    const/16 v5, 0x39

    if-le v4, v5, :cond_3

    :cond_2
    const/16 v5, 0x41

    if-lt v4, v5, :cond_4

    const/16 v5, 0x46

    if-gt v4, v5, :cond_4

    .line 79
    :cond_3
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_4
    const/16 v5, 0x61

    if-lt v4, v5, :cond_5

    const/16 v5, 0x66

    if-gt v4, v5, :cond_5

    add-int/lit8 v4, v4, -0x20

    .line 82
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 83
    :cond_5
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_6

    return-object v0

    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    :cond_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 89
    array-length v3, p0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_8

    return-object v0

    .line 93
    :cond_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 95
    :goto_2
    array-length v0, p0

    if-ge v2, v0, :cond_9

    .line 96
    aget-byte v0, p0, v2

    const-string v3, "0123456789ABCDEF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    int-to-byte v0, v0

    add-int/lit8 v4, v2, 0x1

    .line 97
    aget-byte v4, p0, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    int-to-byte v3, v3

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v3, v3, 0xf

    add-int/2addr v0, v3

    .line 98
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 100
    :cond_9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 6

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 28
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    shr-int/lit8 v4, v3, 0x4

    int-to-byte v4, v4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    const-string v5, "0123456789ABCDEF"

    .line 32
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString([BILjava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 49
    invoke-static {p0}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lorg/xbill/DNS/utils/BaseUtils;->wrapLines(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
