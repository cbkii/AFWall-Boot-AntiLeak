.class public Lorg/xbill/DNS/Name;
.super Ljava/lang/Object;
.source "Name.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/xbill/DNS/Name;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final LABEL_COMPRESSION:I = 0xc0

.field private static final LABEL_MASK:I = 0xc0

.field private static final LABEL_NORMAL:I = 0x0

.field private static final MAXLABEL:I = 0x3f

.field private static final MAXNAME:I = 0xff

.field private static final MAXOFFSETS:I = 0x9

.field public static final empty:Lorg/xbill/DNS/Name;

.field private static final emptyLabel:[B

.field private static final log:Lorg/slf4j/Logger;

.field private static final lowercase:[B

.field public static final root:Lorg/xbill/DNS/Name;

.field private static final serialVersionUID:J = -0x53c666471ff57ae3L

.field private static final wild:Lorg/xbill/DNS/Name;

.field private static final wildLabel:[B


# instance fields
.field private transient hashcode:I

.field private labels:I

.field private name:[B

.field private offsets:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lorg/xbill/DNS/Name;

    .line 16
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/Name;->log:Lorg/slf4j/Logger;

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    sput-object v1, Lorg/xbill/DNS/Name;->emptyLabel:[B

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/xbill/DNS/Name;->wildLabel:[B

    const/16 v1, 0x100

    new-array v1, v1, [B

    sput-object v1, Lorg/xbill/DNS/Name;->lowercase:[B

    const/4 v1, 0x0

    :goto_0
    sget-object v3, Lorg/xbill/DNS/Name;->lowercase:[B

    .line 62
    array-length v4, v3

    if-ge v1, v4, :cond_2

    const/16 v4, 0x41

    if-lt v1, v4, :cond_1

    const/16 v4, 0x5a

    if-le v1, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v1, 0x20

    int-to-byte v4, v4

    .line 66
    aput-byte v4, v3, v1

    goto :goto_2

    :cond_1
    :goto_1
    int-to-byte v4, v1

    .line 64
    aput-byte v4, v3, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_2
    new-instance v1, Lorg/xbill/DNS/Name;

    invoke-direct {v1}, Lorg/xbill/DNS/Name;-><init>()V

    sput-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    sget-object v3, Lorg/xbill/DNS/Name;->emptyLabel:[B

    iput-object v3, v1, Lorg/xbill/DNS/Name;->name:[B

    iput v0, v1, Lorg/xbill/DNS/Name;->labels:I

    .line 72
    new-instance v1, Lorg/xbill/DNS/Name;

    invoke-direct {v1}, Lorg/xbill/DNS/Name;-><init>()V

    sput-object v1, Lorg/xbill/DNS/Name;->empty:Lorg/xbill/DNS/Name;

    new-array v2, v2, [B

    iput-object v2, v1, Lorg/xbill/DNS/Name;->name:[B

    .line 74
    new-instance v1, Lorg/xbill/DNS/Name;

    invoke-direct {v1}, Lorg/xbill/DNS/Name;-><init>()V

    sput-object v1, Lorg/xbill/DNS/Name;->wild:Lorg/xbill/DNS/Name;

    sget-object v2, Lorg/xbill/DNS/Name;->wildLabel:[B

    iput-object v2, v1, Lorg/xbill/DNS/Name;->name:[B

    iput v0, v1, Lorg/xbill/DNS/Name;->labels:I

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x2at
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 295
    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 195
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 196
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_0
    const/4 v3, -0x1

    goto :goto_1

    :sswitch_0
    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_1
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    const/16 v3, 0x3f

    new-array v7, v3, [C

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 217
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    const-string v15, "bad escape"

    const/16 v5, 0xff

    const/4 v4, 0x3

    if-ge v8, v14, :cond_10

    .line 218
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-gt v14, v5, :cond_f

    const-string v6, "label too long"

    if-eqz v10, :cond_9

    const/16 v3, 0x30

    if-lt v14, v3, :cond_5

    const/16 v3, 0x39

    if-gt v14, v3, :cond_5

    if-ge v9, v4, :cond_5

    add-int/lit8 v9, v9, 0x1

    mul-int/lit8 v13, v13, 0xa

    add-int/lit8 v14, v14, -0x30

    add-int/2addr v13, v14

    if-gt v13, v5, :cond_4

    if-ge v9, v4, :cond_3

    goto :goto_4

    :cond_3
    int-to-char v14, v13

    goto :goto_3

    .line 228
    :cond_4
    new-instance v2, Lorg/xbill/DNS/TextParseException;

    invoke-direct {v2, v1, v15}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_5
    if-lez v9, :cond_7

    if-lt v9, v4, :cond_6

    goto :goto_3

    .line 235
    :cond_6
    new-instance v2, Lorg/xbill/DNS/TextParseException;

    invoke-direct {v2, v1, v15}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_7
    :goto_3
    const/16 v3, 0x3f

    if-ge v12, v3, :cond_8

    add-int/lit8 v3, v12, 0x1

    .line 241
    aput-char v14, v7, v12

    move v11, v12

    const/4 v10, 0x0

    move v12, v3

    :goto_4
    const/16 v3, 0x3f

    goto :goto_5

    .line 238
    :cond_8
    new-instance v2, Lorg/xbill/DNS/TextParseException;

    invoke-direct {v2, v1, v6}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_9
    const/16 v3, 0x5c

    if-ne v14, v3, :cond_a

    const/16 v3, 0x3f

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v13, 0x0

    goto :goto_5

    :cond_a
    const/16 v3, 0x2e

    if-ne v14, v3, :cond_c

    const/4 v3, -0x1

    if-eq v11, v3, :cond_b

    .line 251
    invoke-direct {v0, v1, v7, v12}, Lorg/xbill/DNS/Name;->appendFromString(Ljava/lang/String;[CI)V

    const/16 v3, 0x3f

    const/4 v11, -0x1

    const/4 v12, 0x0

    goto :goto_5

    .line 249
    :cond_b
    new-instance v2, Lorg/xbill/DNS/TextParseException;

    const-string v3, "invalid empty label"

    invoke-direct {v2, v1, v3}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_c
    const/4 v3, -0x1

    if-ne v11, v3, :cond_d

    move v11, v8

    :cond_d
    const/16 v3, 0x3f

    if-ge v12, v3, :cond_e

    add-int/lit8 v4, v12, 0x1

    .line 261
    aput-char v14, v7, v12

    move v12, v4

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 259
    :cond_e
    new-instance v2, Lorg/xbill/DNS/TextParseException;

    invoke-direct {v2, v1, v6}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 220
    :cond_f
    new-instance v2, Lorg/xbill/DNS/TextParseException;

    const-string v3, "Illegal character in name"

    invoke-direct {v2, v1, v3}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_10
    if-lez v9, :cond_11

    if-lt v9, v4, :cond_16

    :cond_11
    if-nez v10, :cond_16

    const/4 v3, -0x1

    if-ne v11, v3, :cond_12

    sget-object v3, Lorg/xbill/DNS/Name;->emptyLabel:[B

    const/4 v4, 0x1

    .line 268
    invoke-direct {v0, v1, v3, v4}, Lorg/xbill/DNS/Name;->appendFromString(Ljava/lang/String;[BI)V

    goto :goto_6

    .line 271
    :cond_12
    invoke-direct {v0, v1, v7, v12}, Lorg/xbill/DNS/Name;->appendFromString(Ljava/lang/String;[CI)V

    const/4 v4, 0x0

    :goto_6
    if-eqz v2, :cond_13

    if-nez v4, :cond_13

    .line 274
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v4

    .line 275
    iget-object v3, v2, Lorg/xbill/DNS/Name;->name:[B

    iget v2, v2, Lorg/xbill/DNS/Name;->labels:I

    invoke-direct {v0, v1, v3, v2}, Lorg/xbill/DNS/Name;->appendFromString(Ljava/lang/String;[BI)V

    :cond_13
    if-nez v4, :cond_15

    .line 282
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/Name;->length()S

    move-result v2

    if-eq v2, v5, :cond_14

    goto :goto_7

    .line 283
    :cond_14
    new-instance v2, Lorg/xbill/DNS/TextParseException;

    const-string v3, "Name too long"

    invoke-direct {v2, v1, v3}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_15
    :goto_7
    return-void

    .line 265
    :cond_16
    new-instance v2, Lorg/xbill/DNS/TextParseException;

    invoke-direct {v2, v1, v15}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :pswitch_0
    if-nez v2, :cond_17

    sget-object v1, Lorg/xbill/DNS/Name;->empty:Lorg/xbill/DNS/Name;

    .line 201
    invoke-static {v1, v0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    goto :goto_8

    .line 203
    :cond_17
    invoke-static {v2, v0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    :goto_8
    return-void

    :pswitch_1
    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    .line 207
    invoke-static {v1, v0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    return-void

    .line 198
    :pswitch_2
    new-instance v1, Lorg/xbill/DNS/TextParseException;

    const-string v2, "empty name"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x2e -> :sswitch_1
        0x40 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lorg/xbill/DNS/DNSInput;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-nez v2, :cond_5

    .line 358
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v4

    and-int/lit16 v5, v4, 0xc0

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    const/16 v7, 0xc0

    if-ne v5, v7, :cond_2

    .line 371
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v5

    and-int/lit16 v4, v4, -0xc1

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v5, v4

    sget-object v4, Lorg/xbill/DNS/Name;->log:Lorg/slf4j/Logger;

    .line 373
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "currently {}, pointer to {}"

    invoke-interface {v4, v9, v7, v8}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 375
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    if-ge v5, v7, :cond_1

    if-nez v3, :cond_0

    .line 379
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->save()V

    const/4 v3, 0x1

    .line 382
    :cond_0
    invoke-virtual {p1, v5}, Lorg/xbill/DNS/DNSInput;->jump(I)V

    const-string v6, "current name \'{}\', seeking to {}"

    .line 383
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v6, p0, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 376
    :cond_1
    new-instance p1, Lorg/xbill/DNS/WireParseException;

    const-string v0, "bad compression"

    invoke-direct {p1, v0}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 386
    :cond_2
    new-instance p1, Lorg/xbill/DNS/WireParseException;

    const-string v0, "bad label type"

    invoke-direct {p1, v0}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-nez v4, :cond_4

    sget-object v2, Lorg/xbill/DNS/Name;->emptyLabel:[B

    .line 362
    invoke-direct {p0, v2, v1, v6}, Lorg/xbill/DNS/Name;->append([BII)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    int-to-byte v5, v4

    aput-byte v5, v0, v1

    .line 366
    invoke-virtual {p1, v0, v6, v4}, Lorg/xbill/DNS/DNSInput;->readByteArray([BII)V

    .line 367
    invoke-direct {p0, v0, v1, v6}, Lorg/xbill/DNS/Name;->append([BII)V

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    .line 390
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->restore()V

    :cond_6
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;I)V
    .locals 3

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iget v0, p1, Lorg/xbill/DNS/Name;->labels:I

    if-gt p2, v0, :cond_2

    if-ne p2, v0, :cond_0

    sget-object p1, Lorg/xbill/DNS/Name;->empty:Lorg/xbill/DNS/Name;

    .line 414
    invoke-static {p1, p0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    return-void

    :cond_0
    sub-int/2addr v0, p2

    iput v0, p0, Lorg/xbill/DNS/Name;->labels:I

    .line 419
    iget-object v0, p1, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p1, p2}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    iget-object v2, p1, Lorg/xbill/DNS/Name;->name:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    .line 420
    invoke-direct {p1, p2}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    iget v2, p0, Lorg/xbill/DNS/Name;->labels:I

    if-ge v1, v2, :cond_1

    add-int v2, v1, p2

    .line 422
    invoke-direct {p1, v2}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/Name;->setOffset(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 411
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attempted to remove too many labels"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    return-void
.end method

.method private append([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/NameTooLongException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 116
    :cond_0
    array-length v0, v0

    :goto_0
    move v4, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, p3, :cond_1

    .line 120
    aget-byte v5, p1, v4

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int v2, v0, v3

    const/16 v4, 0xff

    if-gt v2, v4, :cond_4

    iget-object v4, p0, Lorg/xbill/DNS/Name;->name:[B

    if-eqz v4, :cond_2

    .line 130
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    goto :goto_2

    .line 132
    :cond_2
    new-array v2, v2, [B

    .line 134
    :goto_2
    invoke-static {p1, p2, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    :goto_3
    if-ge v1, p3, :cond_3

    const/16 p1, 0x9

    if-ge v1, p1, :cond_3

    iget p1, p0, Lorg/xbill/DNS/Name;->labels:I

    add-int/2addr p1, v1

    .line 137
    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/Name;->setOffset(II)V

    .line 138
    aget-byte p1, v2, v0

    add-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget p1, p0, Lorg/xbill/DNS/Name;->labels:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/xbill/DNS/Name;->labels:I

    return-void

    .line 126
    :cond_4
    new-instance p1, Lorg/xbill/DNS/NameTooLongException;

    invoke-direct {p1}, Lorg/xbill/DNS/NameTooLongException;-><init>()V

    throw p1
.end method

.method private append([CI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/NameTooLongException;
        }
    .end annotation

    .line 144
    invoke-direct {p0, p2}, Lorg/xbill/DNS/Name;->prepareAppend(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int v3, v0, v1

    .line 146
    aget-char v4, p1, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private appendFromString(Ljava/lang/String;[BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 181
    :try_start_0
    invoke-direct {p0, p2, v0, p3}, Lorg/xbill/DNS/Name;->append([BII)V
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 183
    :catch_0
    new-instance p2, Lorg/xbill/DNS/TextParseException;

    const-string p3, "Name too long"

    invoke-direct {p2, p1, p3}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2
.end method

.method private appendFromString(Ljava/lang/String;[CI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 173
    :try_start_0
    invoke-direct {p0, p2, p3}, Lorg/xbill/DNS/Name;->append([CI)V
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 175
    new-instance p3, Lorg/xbill/DNS/TextParseException;

    const-string v0, "Name too long"

    invoke-direct {p3, p1, v0, p2}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p3
.end method

.method private byteString([BI)Ljava/lang/String;
    .locals 6

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p2, 0x1

    .line 591
    aget-byte p2, p1, p2

    move v2, v1

    :goto_0
    add-int v3, v1, p2

    if-ge v2, v3, :cond_6

    .line 593
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    const/16 v5, 0x5c

    if-le v3, v4, :cond_3

    const/16 v4, 0x7f

    if-lt v3, v4, :cond_0

    goto :goto_2

    :cond_0
    const/16 v4, 0x22

    if-eq v3, v4, :cond_2

    const/16 v4, 0x28

    if-eq v3, v4, :cond_2

    const/16 v4, 0x29

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_2

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_2

    if-eq v3, v5, :cond_2

    const/16 v4, 0x40

    if-eq v3, v4, :cond_2

    const/16 v4, 0x24

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    int-to-char v3, v3

    .line 607
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 604
    :cond_2
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char v3, v3

    .line 605
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 595
    :cond_3
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    if-ge v3, v4, :cond_4

    const-string v4, "00"

    .line 597
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const/16 v4, 0x64

    if-ge v3, v4, :cond_5

    const/16 v4, 0x30

    .line 599
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 601
    :cond_5
    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 610
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static concatenate(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/NameTooLongException;
        }
    .end annotation

    .line 436
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 439
    :cond_0
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0}, Lorg/xbill/DNS/Name;-><init>()V

    .line 440
    iget-object v1, p0, Lorg/xbill/DNS/Name;->name:[B

    iget p0, p0, Lorg/xbill/DNS/Name;->labels:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lorg/xbill/DNS/Name;->append([BII)V

    .line 441
    iget-object p0, p1, Lorg/xbill/DNS/Name;->name:[B

    iget p1, p1, Lorg/xbill/DNS/Name;->labels:I

    invoke-direct {v0, p0, v2, p1}, Lorg/xbill/DNS/Name;->append([BII)V

    return-object v0
.end method

.method private static copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    iput-object v0, p1, Lorg/xbill/DNS/Name;->name:[B

    .line 111
    iget-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    iput-wide v0, p1, Lorg/xbill/DNS/Name;->offsets:J

    .line 112
    iget p0, p0, Lorg/xbill/DNS/Name;->labels:I

    iput p0, p1, Lorg/xbill/DNS/Name;->labels:I

    return-void
.end method

.method private equals([BI)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lorg/xbill/DNS/Name;->labels:I

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lorg/xbill/DNS/Name;->name:[B

    .line 772
    aget-byte v3, v3, v2

    aget-byte v4, p1, p2

    if-eq v3, v4, :cond_0

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p2, p2, 0x1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    sget-object v5, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v6, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int/lit8 v7, v2, 0x1

    .line 778
    aget-byte v2, v6, v2

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v5, v2

    add-int/lit8 v6, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    aget-byte p2, v5, p2

    if-eq v2, p2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move p2, v6

    move v2, v7

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public static fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;
    .locals 3

    const/4 v0, 0x0

    .line 338
    :try_start_0
    invoke-static {p0, v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object p0
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 340
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid name \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 326
    invoke-static {p0, v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object p0

    return-object p0
.end method

.method public static fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    const-string v0, "@"

    .line 308
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/xbill/DNS/Name;->empty:Lorg/xbill/DNS/Name;

    :goto_0
    return-object p1

    :cond_1
    const-string v0, "."

    .line 310
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    return-object p0

    .line 314
    :cond_2
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p0, p1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V

    return-object v0
.end method

.method private offset(I)I
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    iget v1, p0, Lorg/xbill/DNS/Name;->labels:I

    if-ge p1, v1, :cond_3

    const/16 v1, 0x9

    const/16 v2, 0x8

    if-ge p1, v1, :cond_1

    sub-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x8

    iget-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_1
    iget-wide v3, p0, Lorg/xbill/DNS/Name;->offsets:J

    const/16 v1, 0x38

    ushr-long/2addr v3, v1

    long-to-int v1, v3

    and-int/lit16 v1, v1, 0xff

    :goto_0
    if-ge v2, p1, :cond_2

    iget-object v3, p0, Lorg/xbill/DNS/Name;->name:[B

    .line 103
    aget-byte v3, v3, v1

    add-int/2addr v3, v0

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1

    .line 95
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "label out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private prepareAppend(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/NameTooLongException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 151
    :cond_0
    array-length v1, v0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    add-int v3, v2, p1

    const/16 v4, 0xff

    if-gt v3, v4, :cond_2

    if-eqz v0, :cond_1

    .line 159
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_1

    .line 161
    :cond_1
    new-array v0, v3, [B

    :goto_1
    int-to-byte p1, p1

    .line 163
    aput-byte p1, v0, v1

    iput-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    iget p1, p0, Lorg/xbill/DNS/Name;->labels:I

    .line 165
    invoke-direct {p0, p1, v1}, Lorg/xbill/DNS/Name;->setOffset(II)V

    iget p1, p0, Lorg/xbill/DNS/Name;->labels:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/xbill/DNS/Name;->labels:I

    return v2

    .line 155
    :cond_2
    new-instance p1, Lorg/xbill/DNS/NameTooLongException;

    invoke-direct {p1}, Lorg/xbill/DNS/NameTooLongException;-><init>()V

    throw p1
.end method

.method private setOffset(II)V
    .locals 4

    if-eqz p1, :cond_1

    const/16 v0, 0x9

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x8

    iget-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    const-wide/16 v2, 0xff

    shl-long/2addr v2, p1

    not-long v2, v2

    and-long/2addr v0, v2

    int-to-long v2, p2

    shl-long p1, v2, p1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lorg/xbill/DNS/Name;->offsets:J

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public canonicalize()Lorg/xbill/DNS/Name;
    .locals 7

    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    .line 490
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-byte v4, v0, v3

    sget-object v5, Lorg/xbill/DNS/Name;->lowercase:[B

    and-int/lit16 v6, v4, 0xff

    .line 491
    aget-byte v5, v5, v6

    if-eq v5, v4, :cond_1

    .line 500
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0}, Lorg/xbill/DNS/Name;-><init>()V

    iget-wide v3, p0, Lorg/xbill/DNS/Name;->offsets:J

    iput-wide v3, v0, Lorg/xbill/DNS/Name;->offsets:J

    iget v1, p0, Lorg/xbill/DNS/Name;->labels:I

    iput v1, v0, Lorg/xbill/DNS/Name;->labels:I

    .line 503
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    new-array v1, v1, [B

    iput-object v1, v0, Lorg/xbill/DNS/Name;->name:[B

    :goto_1
    iget-object v1, v0, Lorg/xbill/DNS/Name;->name:[B

    .line 504
    array-length v3, v1

    if-ge v2, v3, :cond_0

    sget-object v3, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v4, p0, Lorg/xbill/DNS/Name;->name:[B

    .line 505
    aget-byte v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    return-object v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 16
    check-cast p1, Lorg/xbill/DNS/Name;

    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Name;->compareTo(Lorg/xbill/DNS/Name;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/xbill/DNS/Name;)I
    .locals 14

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 834
    :cond_0
    iget v1, p1, Lorg/xbill/DNS/Name;->labels:I

    iget v2, p0, Lorg/xbill/DNS/Name;->labels:I

    .line 835
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    if-gt v4, v2, :cond_4

    iget v5, p0, Lorg/xbill/DNS/Name;->labels:I

    sub-int/2addr v5, v4

    .line 838
    invoke-direct {p0, v5}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v5

    sub-int v6, v1, v4

    .line 839
    invoke-direct {p1, v6}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v6

    iget-object v7, p0, Lorg/xbill/DNS/Name;->name:[B

    .line 840
    aget-byte v7, v7, v5

    .line 841
    iget-object v8, p1, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v8, v8, v6

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_2

    if-ge v9, v8, :cond_2

    sget-object v10, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v11, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int v12, v9, v5

    add-int/2addr v12, v3

    .line 843
    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v10, v11

    and-int/lit16 v11, v11, 0xff

    iget-object v12, p1, Lorg/xbill/DNS/Name;->name:[B

    add-int v13, v9, v6

    add-int/2addr v13, v3

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    aget-byte v10, v10, v12

    and-int/lit16 v10, v10, 0xff

    sub-int/2addr v11, v10

    if-eqz v11, :cond_1

    return v11

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    if-eq v7, v8, :cond_3

    sub-int/2addr v7, v8

    return v7

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iget p1, p0, Lorg/xbill/DNS/Name;->labels:I

    sub-int/2addr p1, v1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 792
    :cond_0
    instance-of v0, p1, Lorg/xbill/DNS/Name;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 795
    :cond_1
    check-cast p1, Lorg/xbill/DNS/Name;

    .line 796
    iget v0, p1, Lorg/xbill/DNS/Name;->labels:I

    iget v2, p0, Lorg/xbill/DNS/Name;->labels:I

    if-eq v0, v2, :cond_2

    return v1

    .line 799
    :cond_2
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->hashCode()I

    move-result v2

    if-eq v0, v2, :cond_3

    return v1

    .line 802
    :cond_3
    iget-object p1, p1, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, p1, v1}, Lorg/xbill/DNS/Name;->equals([BI)Z

    move-result p1

    return p1
.end method

.method public fromDNAME(Lorg/xbill/DNS/DNAMERecord;)Lorg/xbill/DNS/Name;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/NameTooLongException;
        }
    .end annotation

    .line 520
    invoke-virtual {p1}, Lorg/xbill/DNS/DNAMERecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 521
    invoke-virtual {p1}, Lorg/xbill/DNS/DNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object p1

    .line 522
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v1, p0, Lorg/xbill/DNS/Name;->labels:I

    .line 526
    iget v2, v0, Lorg/xbill/DNS/Name;->labels:I

    sub-int/2addr v1, v2

    .line 527
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->length()S

    move-result v2

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v0

    sub-int/2addr v2, v0

    .line 529
    iget v0, p1, Lorg/xbill/DNS/Name;->labels:I

    .line 530
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->length()S

    move-result v3

    add-int v4, v2, v3

    const/16 v5, 0xff

    if-gt v4, v5, :cond_2

    .line 536
    new-instance v5, Lorg/xbill/DNS/Name;

    invoke-direct {v5}, Lorg/xbill/DNS/Name;-><init>()V

    add-int/2addr v1, v0

    iput v1, v5, Lorg/xbill/DNS/Name;->labels:I

    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    .line 538
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, v5, Lorg/xbill/DNS/Name;->name:[B

    .line 539
    iget-object p1, p1, Lorg/xbill/DNS/Name;->name:[B

    const/4 v4, 0x0

    invoke-static {p1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x9

    if-ge v4, v0, :cond_1

    if-ge v4, v1, :cond_1

    .line 542
    invoke-direct {v5, v4, p1}, Lorg/xbill/DNS/Name;->setOffset(II)V

    iget-object v0, v5, Lorg/xbill/DNS/Name;->name:[B

    .line 543
    aget-byte v0, v0, p1

    add-int/lit8 v0, v0, 0x1

    add-int/2addr p1, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v5

    .line 533
    :cond_2
    new-instance p1, Lorg/xbill/DNS/NameTooLongException;

    invoke-direct {p1}, Lorg/xbill/DNS/NameTooLongException;-><init>()V

    throw p1
.end method

.method public getLabel(I)[B
    .locals 2

    .line 660
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result p1

    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    .line 661
    aget-byte v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    add-int/2addr v1, p1

    .line 662
    invoke-static {v0, p1, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public getLabelString(I)Ljava/lang/String;
    .locals 1

    .line 671
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result p1

    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    .line 672
    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/Name;->byteString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lorg/xbill/DNS/Name;->hashcode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 812
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    :goto_0
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    shl-int/lit8 v3, v0, 0x3

    sget-object v4, Lorg/xbill/DNS/Name;->lowercase:[B

    .line 813
    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput v0, p0, Lorg/xbill/DNS/Name;->hashcode:I

    return v0
.end method

.method public isAbsolute()Z
    .locals 4

    iget v0, p0, Lorg/xbill/DNS/Name;->labels:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    .line 561
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v0

    aget-byte v0, v2, v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isWild()Z
    .locals 4

    iget v0, p0, Lorg/xbill/DNS/Name;->labels:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    .line 553
    aget-byte v2, v0, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    aget-byte v0, v0, v3

    const/16 v2, 0x2a

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public labels()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/Name;->labels:I

    return v0
.end method

.method public length()S
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/Name;->labels:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    .line 569
    array-length v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public relativize(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 4

    if-eqz p1, :cond_1

    .line 453
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 456
    :cond_0
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0}, Lorg/xbill/DNS/Name;-><init>()V

    .line 457
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->length()S

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/xbill/DNS/Name;->labels:I

    .line 458
    iget p1, p1, Lorg/xbill/DNS/Name;->labels:I

    sub-int/2addr v2, p1

    iput v2, v0, Lorg/xbill/DNS/Name;->labels:I

    iget-wide v2, p0, Lorg/xbill/DNS/Name;->offsets:J

    iput-wide v2, v0, Lorg/xbill/DNS/Name;->offsets:J

    .line 460
    new-array p1, v1, [B

    iput-object p1, v0, Lorg/xbill/DNS/Name;->name:[B

    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    const/4 v3, 0x0

    .line 461
    invoke-static {v2, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public subdomain(Lorg/xbill/DNS/Name;)Z
    .locals 3

    .line 579
    iget v0, p1, Lorg/xbill/DNS/Name;->labels:I

    iget v1, p0, Lorg/xbill/DNS/Name;->labels:I

    if-le v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ne v0, v1, :cond_1

    .line 584
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    sub-int/2addr v1, v0

    .line 586
    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v0

    invoke-direct {p1, v2, v0}, Lorg/xbill/DNS/Name;->equals([BI)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 650
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Name;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 5

    iget v0, p0, Lorg/xbill/DNS/Name;->labels:I

    if-nez v0, :cond_0

    const-string p1, "@"

    return-object p1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    .line 622
    aget-byte v0, v0, v1

    if-nez v0, :cond_1

    const-string p1, "."

    return-object p1

    .line 625
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lorg/xbill/DNS/Name;->labels:I

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lorg/xbill/DNS/Name;->name:[B

    .line 627
    aget-byte v3, v3, v2

    const/16 v4, 0x2e

    if-nez v3, :cond_2

    if-nez p1, :cond_4

    .line 630
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    if-lez v1, :cond_3

    .line 635
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v4, p0, Lorg/xbill/DNS/Name;->name:[B

    .line 637
    invoke-direct {p0, v4, v2}, Lorg/xbill/DNS/Name;->byteString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 640
    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V
    .locals 5

    .line 683
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/xbill/DNS/Name;->labels:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    if-nez v1, :cond_0

    move-object v2, p0

    goto :goto_1

    .line 692
    :cond_0
    new-instance v2, Lorg/xbill/DNS/Name;

    invoke-direct {v2, p0, v1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    :goto_1
    if-eqz p2, :cond_1

    .line 696
    invoke-virtual {p2, v2}, Lorg/xbill/DNS/Compression;->get(Lorg/xbill/DNS/Name;)I

    move-result v3

    goto :goto_2

    :cond_1
    const/4 v3, -0x1

    :goto_2
    if-ltz v3, :cond_2

    const p2, 0xc000

    or-int/2addr p2, v3

    .line 700
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 704
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v3

    invoke-virtual {p2, v3, v2}, Lorg/xbill/DNS/Compression;->add(ILorg/xbill/DNS/Name;)V

    .line 706
    :cond_3
    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    iget-object v3, p0, Lorg/xbill/DNS/Name;->name:[B

    .line 707
    aget-byte v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v3, v2, v4}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 710
    :cond_4
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    return-void

    .line 684
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "toWire() called on non-absolute name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 764
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    goto :goto_0

    .line 766
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V

    :goto_0
    return-void
.end method

.method public toWire()[B
    .locals 2

    .line 719
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    const/4 v1, 0x0

    .line 720
    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V

    .line 721
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V
    .locals 1

    .line 730
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->toWireCanonical()[B

    move-result-object v0

    .line 731
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    return-void
.end method

.method public toWireCanonical()[B
    .locals 11

    iget v0, p0, Lorg/xbill/DNS/Name;->labels:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [B

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    .line 743
    array-length v0, v0

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lorg/xbill/DNS/Name;->labels:I

    if-ge v2, v5, :cond_2

    iget-object v5, p0, Lorg/xbill/DNS/Name;->name:[B

    .line 745
    aget-byte v5, v5, v3

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    .line 746
    aput-byte v5, v0, v4

    move v4, v6

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    add-int/lit8 v7, v4, 0x1

    sget-object v8, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v9, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int/lit8 v10, v3, 0x1

    .line 748
    aget-byte v3, v9, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v8, v3

    aput-byte v3, v0, v4

    add-int/lit8 v6, v6, 0x1

    move v4, v7

    move v3, v10

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public wild(I)Lorg/xbill/DNS/Name;
    .locals 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 475
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0}, Lorg/xbill/DNS/Name;-><init>()V

    sget-object v1, Lorg/xbill/DNS/Name;->wild:Lorg/xbill/DNS/Name;

    .line 476
    invoke-static {v1, v0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    iget-object v1, p0, Lorg/xbill/DNS/Name;->name:[B

    .line 477
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    iget v3, p0, Lorg/xbill/DNS/Name;->labels:I

    sub-int/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/xbill/DNS/Name;->append([BII)V
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 480
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Name.wild: concatenate failed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 472
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "must replace 1 or more labels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
