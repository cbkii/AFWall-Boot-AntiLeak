.class public Lorg/xbill/DNS/LOCRecord;
.super Lorg/xbill/DNS/Record;
.source "LOCRecord.java"


# static fields
.field private static final w2:Ljava/text/NumberFormat;

.field private static final w3:Ljava/text/NumberFormat;


# instance fields
.field private altitude:J

.field private hPrecision:J

.field private latitude:J

.field private longitude:J

.field private size:J

.field private vPrecision:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    const/4 v1, 0x2

    .line 25
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 27
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lorg/xbill/DNS/LOCRecord;->w3:Ljava/text/NumberFormat;

    const/4 v1, 0x3

    .line 28
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJDDDDDD)V
    .locals 9

    move-object v6, p0

    const/16 v2, 0x1d

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    .line 53
    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    const-wide v0, 0x40ac200000000000L    # 3600.0

    mul-double v2, p5, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double v2, v2, v4

    const-wide/high16 v7, 0x41e0000000000000L    # 2.147483648E9

    add-double/2addr v2, v7

    double-to-long v2, v2

    iput-wide v2, v6, Lorg/xbill/DNS/LOCRecord;->latitude:J

    mul-double v0, v0, p7

    mul-double v0, v0, v4

    add-double/2addr v0, v7

    double-to-long v0, v0

    iput-wide v0, v6, Lorg/xbill/DNS/LOCRecord;->longitude:J

    const-wide v0, 0x40f86a0000000000L    # 100000.0

    add-double v0, p9, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    double-to-long v0, v0

    iput-wide v0, v6, Lorg/xbill/DNS/LOCRecord;->altitude:J

    mul-double v0, p11, v2

    double-to-long v0, v0

    iput-wide v0, v6, Lorg/xbill/DNS/LOCRecord;->size:J

    mul-double v0, p13, v2

    double-to-long v0, v0

    iput-wide v0, v6, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    mul-double v0, p15, v2

    double-to-long v0, v0

    iput-wide v0, v6, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    return-void
.end method

.method private parseDouble(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;ZJJJ)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isEOL()Z

    move-result v1

    const-string v2, "Invalid LOC "

    if-eqz v1, :cond_1

    if-nez p3, :cond_0

    .line 149
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    return-wide p8

    .line 147
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object p1

    throw p1

    .line 152
    :cond_1
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->value()Ljava/lang/String;

    move-result-object p3

    .line 153
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p8

    const/4 p9, 0x1

    if-le p8, p9, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p8

    sub-int/2addr p8, p9

    invoke-virtual {p3, p8}, Ljava/lang/String;->charAt(I)C

    move-result p8

    const/16 v0, 0x6d

    if-ne p8, v0, :cond_2

    .line 154
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p8

    sub-int/2addr p8, p9

    const/4 p9, 0x0

    invoke-virtual {p3, p9, p8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 157
    :cond_2
    :try_start_0
    invoke-direct {p0, p3}, Lorg/xbill/DNS/LOCRecord;->parseFixedPoint(Ljava/lang/String;)D

    move-result-wide p8

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double p8, p8, v0

    double-to-long p8, p8

    cmp-long p3, p8, p4

    if-ltz p3, :cond_3

    cmp-long p3, p8, p6

    if-gtz p3, :cond_3

    return-wide p8

    .line 159
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object p3

    throw p3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :catch_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object p1

    throw p1
.end method

.method private parseFixedPoint(Ljava/lang/String;)D
    .locals 9

    const-string v0, "^-?\\d+$"

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-double v0, p1

    return-wide v0

    :cond_0
    const-string v0, "^-?\\d+\\.\\d*$"

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\\."

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 84
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    const/4 v2, 0x1

    .line 85
    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-double v3, v3

    const-wide/16 v5, 0x0

    cmpg-double v7, v0, v5

    if-gez v7, :cond_1

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    mul-double v3, v3, v5

    .line 89
    :cond_1
    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    int-to-double v7, p1

    .line 90
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v3, v5

    add-double/2addr v0, v3

    return-wide v0

    .line 92
    :cond_2
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1}, Ljava/lang/NumberFormatException;-><init>()V

    throw p1
.end method

.method private static parseLOCformat(I)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    shr-int/lit8 v0, p0, 0x4

    int-to-long v0, v0

    and-int/lit8 p0, p0, 0xf

    const-wide/16 v2, 0x9

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    const/16 v2, 0x9

    if-gt p0, v2, :cond_1

    :goto_0
    add-int/lit8 v2, p0, -0x1

    if-lez p0, :cond_0

    const-wide/16 v3, 0xa

    mul-long v0, v0, v3

    move p0, v2

    goto :goto_0

    :cond_0
    return-wide v0

    .line 292
    :cond_1
    new-instance p0, Lorg/xbill/DNS/WireParseException;

    const-string v0, "Invalid LOC Encoding"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parsePosition(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "latitude"

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 103
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v3

    const/16 v4, 0xb4

    const-string v5, "Invalid LOC "

    if-gt v3, v4, :cond_a

    const/16 v4, 0x5a

    if-le v3, v4, :cond_0

    if-nez v2, :cond_a

    .line 108
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    .line 110
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    if-ltz v9, :cond_2

    const/16 v10, 0x3b

    if-gt v9, v10, :cond_2

    .line 114
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v10, p0

    .line 115
    :try_start_2
    invoke-direct {v10, v4}, Lorg/xbill/DNS/LOCRecord;->parseFixedPoint(Ljava/lang/String;)D

    move-result-wide v11
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    cmpg-double v13, v11, v7

    if-ltz v13, :cond_1

    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    cmpl-double v13, v11, v7

    if-gez v13, :cond_1

    .line 119
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 117
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " seconds"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v7

    throw v7
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    nop

    move-wide v7, v11

    goto :goto_1

    :catch_1
    move-object/from16 v10, p0

    goto :goto_0

    :cond_2
    move-object/from16 v10, p0

    .line 112
    :try_start_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " minutes"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v11

    throw v11
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :goto_0
    nop

    goto :goto_1

    :catch_3
    move-object/from16 v10, p0

    nop

    const/4 v9, 0x0

    :goto_1
    move-wide v11, v7

    .line 123
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    int-to-long v7, v9

    int-to-long v13, v3

    const-wide/16 v15, 0x3c

    mul-long v13, v13, v15

    add-long/2addr v7, v13

    mul-long v7, v7, v15

    long-to-double v7, v7

    add-double/2addr v11, v7

    const-wide v7, 0x408f400000000000L    # 1000.0

    mul-double v11, v11, v7

    double-to-long v7, v11

    .line 129
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    if-eqz v2, :cond_3

    const/16 v4, 0x53

    if-eq v3, v4, :cond_4

    :cond_3
    if-nez v2, :cond_5

    const/16 v4, 0x57

    if-ne v3, v4, :cond_5

    :cond_4
    neg-long v7, v7

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_6

    const/16 v4, 0x4e

    if-ne v3, v4, :cond_7

    :cond_6
    if-nez v2, :cond_8

    const/16 v2, 0x45

    if-ne v3, v2, :cond_7

    goto :goto_3

    .line 133
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_8
    :goto_3
    const-wide v0, 0x80000000L

    add-long/2addr v7, v0

    return-wide v7

    .line 124
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_a
    move-object/from16 v10, p0

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " degrees"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method private positionToString(JCC)Ljava/lang/String;
    .locals 8

    .line 188
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v0, 0x80000000L

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    neg-long p1, p1

    move p3, p4

    :cond_0
    const-wide/32 v0, 0x36ee80

    .line 199
    div-long v2, p1, v0

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 200
    rem-long/2addr p1, v0

    const-string p4, " "

    .line 201
    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v0, 0xea60

    .line 203
    div-long v2, p1, v0

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 204
    rem-long v3, p1, v0

    .line 205
    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/xbill/DNS/LOCRecord;->w3:Ljava/text/NumberFormat;

    const-wide/16 v5, 0x3e8

    move-object v0, p0

    move-object v1, v7

    .line 207
    invoke-direct/range {v0 .. v6}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuilder;Ljava/text/NumberFormat;JJ)V

    .line 208
    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private renderFixedPoint(Ljava/lang/StringBuilder;Ljava/text/NumberFormat;JJ)V
    .locals 2

    .line 179
    div-long v0, p3, p5

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 180
    rem-long/2addr p3, p5

    const-wide/16 p5, 0x0

    cmp-long v0, p3, p5

    if-eqz v0, :cond_0

    const-string p5, "."

    .line 182
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {p2, p3, p4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private toLOCformat(J)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x9

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    const-wide/16 v1, 0xa

    .line 304
    div-long/2addr p1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    shl-long/2addr p1, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method


# virtual methods
.method public getAltitude()D
    .locals 4

    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    const-wide/32 v2, 0x989680

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getHPrecision()D
    .locals 4

    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getLatitude()D
    .locals 4

    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    const-wide v2, 0x80000000L

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getLongitude()D
    .locals 4

    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    const-wide v2, 0x80000000L

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getSize()D
    .locals 4

    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getVPrecision()D
    .locals 4

    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method protected rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "latitude"

    .line 169
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/LOCRecord;->parsePosition(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    const-string p2, "longitude"

    .line 170
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/LOCRecord;->parsePosition(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    const-string v4, "altitude"

    const/4 v5, 0x1

    const-wide/32 v6, -0x989680

    const-wide v8, 0xff67697fL

    const-wide/16 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 171
    invoke-direct/range {v2 .. v11}, Lorg/xbill/DNS/LOCRecord;->parseDouble(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;ZJJJ)J

    move-result-wide v0

    const-wide/32 v2, 0x989680

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    const-string v4, "size"

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide v8, 0x218711a00L

    const-wide/16 v10, 0x64

    move-object v2, p0

    move-object v3, p1

    .line 172
    invoke-direct/range {v2 .. v11}, Lorg/xbill/DNS/LOCRecord;->parseDouble(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;ZJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    const-string v4, "horizontal precision"

    const-wide/32 v10, 0xf4240

    .line 173
    invoke-direct/range {v2 .. v11}, Lorg/xbill/DNS/LOCRecord;->parseDouble(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;ZJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    const-string v4, "vertical precision"

    const-wide/16 v10, 0x3e8

    .line 174
    invoke-direct/range {v2 .. v11}, Lorg/xbill/DNS/LOCRecord;->parseDouble(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;ZJJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    return-void
.end method

.method protected rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/LOCRecord;->parseLOCformat(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    .line 72
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/LOCRecord;->parseLOCformat(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    .line 73
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/LOCRecord;->parseLOCformat(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    .line 74
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    .line 75
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    .line 76
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    return-void

    .line 68
    :cond_0
    new-instance p1, Lorg/xbill/DNS/WireParseException;

    const-string v0, "Invalid LOC version"

    invoke-direct {p1, v0}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected rrToString()Ljava/lang/String;
    .locals 10

    .line 218
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    const/16 v2, 0x4e

    const/16 v3, 0x53

    .line 221
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/xbill/DNS/LOCRecord;->positionToString(JCC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    .line 222
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    const/16 v3, 0x45

    const/16 v4, 0x57

    .line 225
    invoke-direct {p0, v1, v2, v3, v4}, Lorg/xbill/DNS/LOCRecord;->positionToString(JCC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    const-wide/32 v2, 0x989680

    sub-long v3, v0, v2

    const-wide/16 v5, 0x64

    move-object v0, p0

    move-object v1, v7

    move-object v2, v8

    .line 229
    invoke-direct/range {v0 .. v6}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuilder;Ljava/text/NumberFormat;JJ)V

    const-string v9, "m "

    .line 230
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    .line 233
    invoke-direct/range {v0 .. v6}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuilder;Ljava/text/NumberFormat;JJ)V

    .line 234
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    .line 237
    invoke-direct/range {v0 .. v6}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuilder;Ljava/text/NumberFormat;JJ)V

    .line 238
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    .line 241
    invoke-direct/range {v0 .. v6}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuilder;Ljava/text/NumberFormat;JJ)V

    const-string v0, "m"

    .line 242
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 0

    const/4 p2, 0x0

    .line 279
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    iget-wide p2, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    .line 280
    invoke-direct {p0, p2, p3}, Lorg/xbill/DNS/LOCRecord;->toLOCformat(J)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    iget-wide p2, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    .line 281
    invoke-direct {p0, p2, p3}, Lorg/xbill/DNS/LOCRecord;->toLOCformat(J)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    iget-wide p2, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    .line 282
    invoke-direct {p0, p2, p3}, Lorg/xbill/DNS/LOCRecord;->toLOCformat(J)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    iget-wide p2, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    .line 283
    invoke-virtual {p1, p2, p3}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    iget-wide p2, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    .line 284
    invoke-virtual {p1, p2, p3}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    iget-wide p2, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    .line 285
    invoke-virtual {p1, p2, p3}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    return-void
.end method
