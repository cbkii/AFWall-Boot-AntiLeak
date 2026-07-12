.class public Lorg/xbill/DNS/DNSInput;
.super Ljava/lang/Object;
.source "DNSInput.java"


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;

.field private final limit:I

.field private final offset:I

.field private savedEnd:I

.field private savedPos:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 36
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DNSInput;->offset:I

    .line 37
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    iput p1, p0, Lorg/xbill/DNS/DNSInput;->limit:I

    const/4 p1, -0x1

    iput p1, p0, Lorg/xbill/DNS/DNSInput;->savedPos:I

    iput p1, p0, Lorg/xbill/DNS/DNSInput;->savedEnd:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 26
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xbill/DNS/DNSInput;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private require(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_0

    return-void

    .line 54
    :cond_0
    new-instance p1, Lorg/xbill/DNS/WireParseException;

    const-string v0, "end of input"

    invoke-direct {p1, v0}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public clearActive()V
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/xbill/DNS/DNSInput;->limit:I

    .line 77
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method public current()I
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 44
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lorg/xbill/DNS/DNSInput;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public jump(I)V
    .locals 3

    iget v0, p0, Lorg/xbill/DNS/DNSInput;->offset:I

    add-int v1, p1, v0

    iget v2, p0, Lorg/xbill/DNS/DNSInput;->limit:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    add-int/2addr v0, p1

    .line 110
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v0, p0, Lorg/xbill/DNS/DNSInput;->limit:I

    .line 111
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot jump past end of input"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readByteArray([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 178
    invoke-direct {p0, p3}, Lorg/xbill/DNS/DNSInput;->require(I)V

    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 179
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public readByteArray()[B
    .locals 4

    .line 202
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    .line 203
    new-array v1, v0, [B

    iget-object v2, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    .line 204
    invoke-virtual {v2, v1, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method public readByteArray(I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 189
    invoke-direct {p0, p1}, Lorg/xbill/DNS/DNSInput;->require(I)V

    .line 190
    new-array v0, p1, [B

    iget-object v1, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    .line 191
    invoke-virtual {v1, v0, v2, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public readCountedString()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    .line 217
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    return-object v0
.end method

.method public readU16()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 154
    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSInput;->require(I)V

    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 155
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public readU32()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 165
    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSInput;->require(I)V

    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 166
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readU8()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 143
    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSInput;->require(I)V

    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 144
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public remaining()I
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 49
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public restore()V
    .locals 2

    iget v0, p0, Lorg/xbill/DNS/DNSInput;->savedPos:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 130
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/xbill/DNS/DNSInput;->savedEnd:I

    .line 131
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/DNSInput;->savedPos:I

    iput v0, p0, Lorg/xbill/DNS/DNSInput;->savedEnd:I

    return-void

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no previous state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public restoreActive(I)V
    .locals 3

    iget v0, p0, Lorg/xbill/DNS/DNSInput;->offset:I

    add-int v1, p1, v0

    iget v2, p0, Lorg/xbill/DNS/DNSInput;->limit:I

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    add-int/2addr p1, v0

    .line 96
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot set active region past end of input"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public save()V
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 121
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DNSInput;->savedPos:I

    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 122
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DNSInput;->savedEnd:I

    return-void
.end method

.method public saveActive()I
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget v1, p0, Lorg/xbill/DNS/DNSInput;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public setActive(I)V
    .locals 2

    iget v0, p0, Lorg/xbill/DNS/DNSInput;->limit:I

    iget-object v1, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 66
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 69
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot set active region past end of input"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
