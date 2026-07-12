.class Lorg/xbill/DNS/Record$RecordSerializationProxy;
.super Ljava/lang/Object;
.source "Record.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/Record;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordSerializationProxy"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x13e728d94ae25171L


# instance fields
.field private final isEmpty:Z

.field private final wireData:[B


# direct methods
.method constructor <init>(Lorg/xbill/DNS/Record;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    instance-of v0, p1, Lorg/xbill/DNS/EmptyRecord;

    iput-boolean v0, p0, Lorg/xbill/DNS/Record$RecordSerializationProxy;->isEmpty:Z

    xor-int/lit8 v0, v0, 0x1

    .line 44
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Record;->toWire(I)[B

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/Record$RecordSerializationProxy;->wireData:[B

    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Record$RecordSerializationProxy;->wireData:[B

    iget-boolean v1, p0, Lorg/xbill/DNS/Record$RecordSerializationProxy;->isEmpty:Z

    xor-int/lit8 v1, v1, 0x1

    .line 49
    invoke-static {v0, v1}, Lorg/xbill/DNS/Record;->fromWire([BI)Lorg/xbill/DNS/Record;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Ljava/io/InvalidObjectException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
