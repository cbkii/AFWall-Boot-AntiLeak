.class public Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_DNS_SUFFIX;
.super Lcom/sun/jna/Structure;
.source "IPHlpAPI.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "Next",
        "_String"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/config/IPHlpAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IP_ADAPTER_DNS_SUFFIX"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_DNS_SUFFIX$ByReference;
    }
.end annotation


# instance fields
.field public Next:Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_DNS_SUFFIX$ByReference;

.field public _String:[C


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 146
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/xbill/DNS/config/IPHlpAPI$IP_ADAPTER_DNS_SUFFIX;->_String:[C

    return-void
.end method
