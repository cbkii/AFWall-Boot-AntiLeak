.class public Lorg/xbill/DNS/config/IPHlpAPI$sockaddr_in6;
.super Lcom/sun/jna/Structure;
.source "IPHlpAPI.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "sin6_family",
        "sin6_port",
        "sin6_flowinfo",
        "sin6_addr",
        "sin6_scope_id"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/config/IPHlpAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "sockaddr_in6"
.end annotation


# instance fields
.field public sin6_addr:[B

.field public sin6_family:S

.field public sin6_flowinfo:I

.field public sin6_port:S

.field public sin6_scope_id:I


# direct methods
.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    const/16 p1, 0x10

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/xbill/DNS/config/IPHlpAPI$sockaddr_in6;->sin6_addr:[B

    .line 52
    invoke-virtual {p0}, Lorg/xbill/DNS/config/IPHlpAPI$sockaddr_in6;->read()V

    return-void
.end method
