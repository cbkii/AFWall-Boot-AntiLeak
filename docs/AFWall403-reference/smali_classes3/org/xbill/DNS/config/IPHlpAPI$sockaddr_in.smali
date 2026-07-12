.class public Lorg/xbill/DNS/config/IPHlpAPI$sockaddr_in;
.super Lcom/sun/jna/Structure;
.source "IPHlpAPI.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "sin_family",
        "sin_port",
        "sin_addr",
        "sin_zero"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/config/IPHlpAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "sockaddr_in"
.end annotation


# instance fields
.field public sin_addr:[B

.field public sin_family:S

.field public sin_port:S

.field public sin_zero:[B


# direct methods
.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    const/4 p1, 0x4

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/xbill/DNS/config/IPHlpAPI$sockaddr_in;->sin_addr:[B

    const/16 p1, 0x8

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/xbill/DNS/config/IPHlpAPI$sockaddr_in;->sin_zero:[B

    .line 39
    invoke-virtual {p0}, Lorg/xbill/DNS/config/IPHlpAPI$sockaddr_in;->read()V

    return-void
.end method
