.class public Ldev/ukanth/ufirewall/util/PackageComparator;
.super Ljava/lang/Object;
.source "PackageComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ldev/ukanth/ufirewall/Api$PackageInfoData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ldev/ukanth/ufirewall/Api$PackageInfoData;Ldev/ukanth/ufirewall/Api$PackageInfoData;)I
    .locals 8

    .line 14
    iget-boolean v0, p1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->firstseen:Z

    iget-boolean v1, p2, Ldev/ukanth/ufirewall/Api$PackageInfoData;->firstseen:Z

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 15
    iget-boolean p1, p1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->firstseen:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 17
    :cond_1
    iget-boolean v0, p1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_3g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_wifi:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_roam:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_vpn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tether:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tor:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 19
    :goto_2
    iget-boolean v4, p2, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_3g:Z

    if-nez v4, :cond_5

    iget-boolean v4, p2, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_wifi:Z

    if-nez v4, :cond_5

    iget-boolean v4, p2, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_roam:Z

    if-nez v4, :cond_5

    iget-boolean v4, p2, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_vpn:Z

    if-nez v4, :cond_5

    iget-boolean v4, p2, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tether:Z

    if-nez v4, :cond_5

    iget-boolean v4, p2, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    if-nez v4, :cond_5

    iget-boolean v4, p2, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tor:Z

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v4, 0x1

    :goto_4
    if-ne v0, v4, :cond_d

    .line 23
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->sortBy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_5
    const/4 v4, -0x1

    goto :goto_6

    :pswitch_0
    const-string v5, "s2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_5

    :cond_6
    const/4 v4, 0x2

    goto :goto_6

    :pswitch_1
    const-string v5, "s1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    const/4 v4, 0x1

    goto :goto_6

    :pswitch_2
    const-string v5, "s0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    :goto_6
    packed-switch v4, :pswitch_data_1

    goto :goto_9

    .line 29
    :pswitch_3
    iget v0, p2, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    iget v4, p1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    if-le v0, v4, :cond_9

    goto :goto_7

    :cond_9
    iget p2, p2, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    iget p1, p1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    if-ge p2, p1, :cond_a

    const/4 v2, 0x0

    goto :goto_7

    :cond_a
    const/4 v2, 0x1

    :goto_7
    return v2

    .line 27
    :pswitch_4
    iget-wide v4, p1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->installTime:J

    iget-wide v6, p2, Ldev/ukanth/ufirewall/Api$PackageInfoData;->installTime:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_b

    goto :goto_8

    :cond_b
    iget-wide v4, p1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->installTime:J

    iget-wide p1, p2, Ldev/ukanth/ufirewall/Api$PackageInfoData;->installTime:J

    cmp-long v0, v4, p1

    if-gez v0, :cond_c

    const/4 v2, 0x1

    goto :goto_8

    :cond_c
    const/4 v2, 0x0

    :goto_8
    return v2

    .line 25
    :pswitch_5
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    iget-object p1, p1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->names:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p2, Ldev/ukanth/ufirewall/Api$PackageInfoData;->names:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_d
    :goto_9
    if-eqz v0, :cond_e

    return v2

    :cond_e
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0xe1d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 10
    check-cast p1, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    check-cast p2, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/util/PackageComparator;->compare(Ldev/ukanth/ufirewall/Api$PackageInfoData;Ldev/ukanth/ufirewall/Api$PackageInfoData;)I

    move-result p1

    return p1
.end method
