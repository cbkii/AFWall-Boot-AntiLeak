.class public Lorg/xbill/DNS/tools/update;
.super Ljava/lang/Object;
.source "update.java"


# instance fields
.field defaultClass:I

.field defaultTTL:J

.field log:Ljava/io/PrintStream;

.field query:Lorg/xbill/DNS/Message;

.field res:Lorg/xbill/DNS/Resolver;

.field response:Lorg/xbill/DNS/Message;

.field server:Ljava/lang/String;

.field zone:Lorg/xbill/DNS/Name;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 9

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/tools/update;->server:Ljava/lang/String;

    .line 44
    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    iput-object v1, p0, Lorg/xbill/DNS/tools/update;->zone:Lorg/xbill/DNS/Name;

    const/4 v1, 0x1

    iput v1, p0, Lorg/xbill/DNS/tools/update;->defaultClass:I

    iput-object v0, p0, Lorg/xbill/DNS/tools/update;->log:Ljava/io/PrintStream;

    .line 63
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 64
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 66
    invoke-virtual {p0}, Lorg/xbill/DNS/tools/update;->newMessage()Lorg/xbill/DNS/Message;

    move-result-object v4

    iput-object v4, p0, Lorg/xbill/DNS/tools/update;->query:Lorg/xbill/DNS/Message;

    .line 68
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 69
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 71
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 79
    :try_start_0
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    .line 80
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/BufferedReader;

    .line 82
    sget-object v6, Ljava/lang/System;->in:Ljava/io/InputStream;
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v7, "> "

    if-ne v4, v6, :cond_1

    .line 83
    :try_start_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 86
    :cond_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 88
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 89
    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 90
    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 91
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    :cond_2
    if-eqz v4, :cond_0

    iget-object v5, p0, Lorg/xbill/DNS/tools/update;->log:Ljava/io/PrintStream;

    if-eqz v5, :cond_3

    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_4

    goto :goto_0

    .line 106
    :cond_4
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_5

    .line 107
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 110
    :cond_5
    new-instance v5, Lorg/xbill/DNS/Tokenizer;

    invoke-direct {v5, v4}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    :try_start_2
    invoke-virtual {v5}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v6

    .line 113
    invoke-virtual {v6}, Lorg/xbill/DNS/Tokenizer$Token;->isEOL()Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_7

    .line 253
    :cond_6
    :goto_1
    :try_start_3
    invoke-virtual {v5}, Lorg/xbill/DNS/Tokenizer;->close()V
    :try_end_3
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 116
    :cond_7
    :try_start_4
    invoke-virtual {v6}, Lorg/xbill/DNS/Tokenizer$Token;->value()Ljava/lang/String;

    move-result-object v6

    .line 118
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x4

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v7, "require"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x9

    goto/16 :goto_3

    :sswitch_1
    const-string v7, "sleep"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x1a

    goto/16 :goto_3

    :sswitch_2
    const-string v7, "query"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x14

    goto/16 :goto_3

    :sswitch_3
    const-string v7, "clear"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x13

    goto/16 :goto_3

    :sswitch_4
    const-string v7, "class"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x5

    goto/16 :goto_3

    :sswitch_5
    const-string v7, "zone"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x8

    goto/16 :goto_3

    :sswitch_6
    const-string v7, "show"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x12

    goto/16 :goto_3

    :sswitch_7
    const-string v7, "send"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x11

    goto/16 :goto_3

    :sswitch_8
    const-string v7, "quit"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x15

    goto/16 :goto_3

    :sswitch_9
    const-string v7, "port"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x3

    goto/16 :goto_3

    :sswitch_a
    const-string v7, "help"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0xe

    goto/16 :goto_3

    :sswitch_b
    const-string v7, "glue"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0xd

    goto/16 :goto_3

    :sswitch_c
    const-string v7, "file"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x17

    goto/16 :goto_3

    :sswitch_d
    const-string v7, "edns"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x2

    goto/16 :goto_3

    :sswitch_e
    const-string v7, "echo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x10

    goto/16 :goto_3

    :sswitch_f
    const-string v7, "date"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x1b

    goto/16 :goto_3

    :sswitch_10
    const-string v7, "ttl"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x6

    goto/16 :goto_3

    :sswitch_11
    const-string v7, "tcp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x4

    goto/16 :goto_3

    :sswitch_12
    const-string v7, "log"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x18

    goto :goto_3

    :sswitch_13
    const-string v7, "key"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    goto :goto_3

    :sswitch_14
    const-string v7, "add"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0xb

    goto :goto_3

    :sswitch_15
    const-string v7, "q"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x16

    goto :goto_3

    :sswitch_16
    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0xf

    goto :goto_3

    :sswitch_17
    const-string v7, "server"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x0

    goto :goto_3

    :sswitch_18
    const-string v7, "prohibit"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0xa

    goto :goto_3

    :sswitch_19
    const-string v7, "origin"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x7

    goto :goto_3

    :sswitch_1a
    const-string v7, "delete"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0xc

    goto :goto_3

    :sswitch_1b
    const-string v7, "assert"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x19

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v7, -0x1

    :goto_3
    packed-switch v7, :pswitch_data_0

    .line 250
    new-instance p1, Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 241
    :pswitch_0
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/Instant;

    move-result-object p1

    .line 242
    invoke-virtual {v5}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v4

    .line 243
    invoke-virtual {v4}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v4}, Lorg/xbill/DNS/Tokenizer$Token;->value()Ljava/lang/String;

    move-result-object v4

    const-string v6, "-ms"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 244
    invoke-static {p1}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Instant;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xbill/DNS/tools/update;->print(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 246
    :cond_9
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/tools/update;->print(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 232
    :pswitch_1
    invoke-virtual {v5}, Lorg/xbill/DNS/Tokenizer;->getUInt32()J

    move-result-wide v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 234
    :try_start_5
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 236
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 237
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 227
    :pswitch_2
    invoke-virtual {p0, v5}, Lorg/xbill/DNS/tools/update;->doAssert(Lorg/xbill/DNS/Tokenizer;)Z

    move-result p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez p1, :cond_6

    .line 253
    :try_start_7
    invoke-virtual {v5}, Lorg/xbill/DNS/Tokenizer;->close()V
    :try_end_7
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    return-void

    .line 224
    :pswitch_3
    :try_start_8
    invoke-virtual {p0, v5}, Lorg/xbill/DNS/tools/update;->doLog(Lorg/xbill/DNS/Tokenizer;)V

    goto/16 :goto_1

    .line 221
    :pswitch_4
    invoke-virtual {p0, v5, v2, v3}, Lorg/xbill/DNS/tools/update;->doFile(Lorg/xbill/DNS/Tokenizer;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v4, p0, Lorg/xbill/DNS/tools/update;->log:Ljava/io/PrintStream;

    if-eqz v4, :cond_a

    .line 213
    invoke-virtual {v4}, Ljava/io/PrintStream;->close()V

    .line 215
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/BufferedReader;

    .line 216
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    goto :goto_4

    .line 218
    :cond_b
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_1

    .line 208
    :pswitch_6
    invoke-virtual {p0, v5}, Lorg/xbill/DNS/tools/update;->doQuery(Lorg/xbill/DNS/Tokenizer;)V

    goto/16 :goto_1

    .line 205
    :pswitch_7
    invoke-virtual {p0}, Lorg/xbill/DNS/tools/update;->newMessage()Lorg/xbill/DNS/Message;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/tools/update;->query:Lorg/xbill/DNS/Message;

    goto/16 :goto_1

    :pswitch_8
    iget-object p1, p0, Lorg/xbill/DNS/tools/update;->query:Lorg/xbill/DNS/Message;

    .line 202
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/tools/update;->print(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 198
    :pswitch_9
    invoke-virtual {p0}, Lorg/xbill/DNS/tools/update;->sendUpdate()V

    .line 199
    invoke-virtual {p0}, Lorg/xbill/DNS/tools/update;->newMessage()Lorg/xbill/DNS/Message;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/tools/update;->query:Lorg/xbill/DNS/Message;

    goto/16 :goto_1

    .line 195
    :pswitch_a
    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xbill/DNS/tools/update;->print(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 187
    :pswitch_b
    invoke-virtual {v5}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 189
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer$Token;->value()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/xbill/DNS/tools/update;->help(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 191
    :cond_c
    invoke-static {v0}, Lorg/xbill/DNS/tools/update;->help(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 183
    :pswitch_c
    invoke-virtual {p0, v5}, Lorg/xbill/DNS/tools/update;->doGlue(Lorg/xbill/DNS/Tokenizer;)V

    goto/16 :goto_1

    .line 180
    :pswitch_d
    invoke-virtual {p0, v5}, Lorg/xbill/DNS/tools/update;->doDelete(Lorg/xbill/DNS/Tokenizer;)V

    goto/16 :goto_1

    .line 177
    :pswitch_e
    invoke-virtual {p0, v5}, Lorg/xbill/DNS/tools/update;->doAdd(Lorg/xbill/DNS/Tokenizer;)V

    goto/16 :goto_1

    .line 174
    :pswitch_f
    invoke-virtual {p0, v5}, Lorg/xbill/DNS/tools/update;->doProhibit(Lorg/xbill/DNS/Tokenizer;)V

    goto/16 :goto_1

    .line 171
    :pswitch_10
    invoke-virtual {p0, v5}, Lorg/xbill/DNS/tools/update;->doRequire(Lorg/xbill/DNS/Tokenizer;)V

    goto/16 :goto_1

    .line 168
    :pswitch_11
    sget-object p1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-virtual {v5, p1}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/tools/update;->zone:Lorg/xbill/DNS/Name;

    goto/16 :goto_1

    .line 164
    :pswitch_12
    invoke-virtual {v5}, Lorg/xbill/DNS/Tokenizer;->getTTL()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/xbill/DNS/tools/update;->defaultTTL:J

    goto/16 :goto_1

    .line 155
    :pswitch_13
    invoke-virtual {v5}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-static {p1}, Lorg/xbill/DNS/DClass;->value(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_d

    iput v4, p0, Lorg/xbill/DNS/tools/update;->defaultClass:I

    goto/16 :goto_1

    .line 160
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid class "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xbill/DNS/tools/update;->print(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_14
    iget-object p1, p0, Lorg/xbill/DNS/tools/update;->res:Lorg/xbill/DNS/Resolver;

    if-nez p1, :cond_e

    .line 150
    new-instance p1, Lorg/xbill/DNS/SimpleResolver;

    iget-object v4, p0, Lorg/xbill/DNS/tools/update;->server:Ljava/lang/String;

    invoke-direct {p1, v4}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/xbill/DNS/tools/update;->res:Lorg/xbill/DNS/Resolver;

    :cond_e
    iget-object p1, p0, Lorg/xbill/DNS/tools/update;->res:Lorg/xbill/DNS/Resolver;

    .line 152
    invoke-interface {p1, v1}, Lorg/xbill/DNS/Resolver;->setTCP(Z)V

    goto/16 :goto_1

    :pswitch_15
    iget-object p1, p0, Lorg/xbill/DNS/tools/update;->res:Lorg/xbill/DNS/Resolver;

    if-nez p1, :cond_f

    .line 144
    new-instance p1, Lorg/xbill/DNS/SimpleResolver;

    iget-object v4, p0, Lorg/xbill/DNS/tools/update;->server:Ljava/lang/String;

    invoke-direct {p1, v4}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/xbill/DNS/tools/update;->res:Lorg/xbill/DNS/Resolver;

    :cond_f
    iget-object p1, p0, Lorg/xbill/DNS/tools/update;->res:Lorg/xbill/DNS/Resolver;

    .line 146
    invoke-virtual {v5}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v4

    invoke-interface {p1, v4}, Lorg/xbill/DNS/Resolver;->setPort(I)V

    goto/16 :goto_1

    :pswitch_16
    iget-object p1, p0, Lorg/xbill/DNS/tools/update;->res:Lorg/xbill/DNS/Resolver;

    if-nez p1, :cond_10

    .line 138
    new-instance p1, Lorg/xbill/DNS/SimpleResolver;

    iget-object v4, p0, Lorg/xbill/DNS/tools/update;->server:Ljava/lang/String;

    invoke-direct {p1, v4}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/xbill/DNS/tools/update;->res:Lorg/xbill/DNS/Resolver;

    :cond_10
    iget-object p1, p0, Lorg/xbill/DNS/tools/update;->res:Lorg/xbill/DNS/Resolver;

    .line 140
    invoke-virtual {v5}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v4

    invoke-interface {p1, v4}, Lorg/xbill/DNS/Resolver;->setEDNS(I)V

    goto/16 :goto_1

    .line 129
    :pswitch_17
    invoke-virtual {v5}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-virtual {v5}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lorg/xbill/DNS/tools/update;->res:Lorg/xbill/DNS/Resolver;

    if-nez v6, :cond_11

    .line 132
    new-instance v6, Lorg/xbill/DNS/SimpleResolver;

    iget-object v7, p0, Lorg/xbill/DNS/tools/update;->server:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lorg/xbill/DNS/tools/update;->res:Lorg/xbill/DNS/Resolver;

    :cond_11
    iget-object v6, p0, Lorg/xbill/DNS/tools/update;->res:Lorg/xbill/DNS/Resolver;

    .line 134
    new-instance v7, Lorg/xbill/DNS/TSIG;

    sget-object v8, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    invoke-direct {v7, v8, p1, v4}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lorg/xbill/DNS/Resolver;->setTSIGKey(Lorg/xbill/DNS/TSIG;)V

    goto/16 :goto_1

    .line 120
    :pswitch_18
    invoke-virtual {v5}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/tools/update;->server:Ljava/lang/String;

    .line 121
    new-instance p1, Lorg/xbill/DNS/SimpleResolver;

    iget-object v4, p0, Lorg/xbill/DNS/tools/update;->server:Ljava/lang/String;

    invoke-direct {p1, v4}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/xbill/DNS/tools/update;->res:Lorg/xbill/DNS/Resolver;

    .line 122
    invoke-virtual {v5}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 124
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer$Token;->value()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lorg/xbill/DNS/tools/update;->res:Lorg/xbill/DNS/Resolver;

    .line 125
    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p1

    invoke-interface {v4, p1}, Lorg/xbill/DNS/Resolver;->setPort(I)V

    goto/16 :goto_1

    .line 250
    :goto_5
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid keyword: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xbill/DNS/tools/update;->print(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    .line 110
    :try_start_9
    invoke-virtual {v5}, Lorg/xbill/DNS/Tokenizer;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v4

    :try_start_a
    invoke-virtual {p1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p1
    :try_end_a
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    :catch_1
    move-exception p1

    .line 261
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 259
    :catch_2
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Socket error"

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 257
    :catch_3
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Operation timed out"

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_4
    move-exception p1

    .line 255
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x53ef8cba -> :sswitch_1b
        -0x4f997a55 -> :sswitch_1a
        -0x3c1e50da -> :sswitch_19
        -0x3ba14a21 -> :sswitch_18
        -0x35fdd0bd -> :sswitch_17
        0x3f -> :sswitch_16
        0x71 -> :sswitch_15
        0x178a1 -> :sswitch_14
        0x19e5f -> :sswitch_13
        0x1a344 -> :sswitch_12
        0x1bfe1 -> :sswitch_11
        0x1c1ec -> :sswitch_10
        0x2eefae -> :sswitch_f
        0x2f6a25 -> :sswitch_e
        0x2f6ea4 -> :sswitch_d
        0x2ff57c -> :sswitch_c
        0x307635 -> :sswitch_b
        0x30cf41 -> :sswitch_a
        0x349881 -> :sswitch_9
        0x35224f -> :sswitch_8
        0x35cf88 -> :sswitch_7
        0x35dafd -> :sswitch_6
        0x3923ac -> :sswitch_5
        0x5a5a978 -> :sswitch_4
        0x5a5b64d -> :sswitch_3
        0x66f18c8 -> :sswitch_2
        0x6872ed7 -> :sswitch_1
        0x414f0165 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static help(Ljava/lang/String;)V
    .locals 3

    .line 546
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    if-nez p0, :cond_0

    .line 548
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "The following are supported commands:\nadd      assert   class    clear    date     delete\necho     edns     file     glue     help     key\nlog      port     prohibit query    quit     require\nsend     server   show     sleep    tcp      ttl\nzone     #\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 557
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 559
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "require"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "sleep"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "query"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "clear"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "class"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "zone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "show"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "send"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "quit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "port"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "help"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "glue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "file"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "edns"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "echo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "date"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "ttl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "tcp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "log"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "add"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_15
    const-string v0, "q"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_0

    :cond_16
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_16
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_17
    const-string v0, "server"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_18
    const-string v0, "prohibit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_0

    :cond_19
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_19
    const-string v0, "origin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1a
    const-string v0, "delete"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1b
    const-string v0, "assert"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 672
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Topic \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' unrecognized\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 640
    :pswitch_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "require <name> [ttl] [class] <type> <data> \nrequire <name> <type> \nrequire <name>\n\nrequire that a record, set, or name is present\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 656
    :pswitch_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "sleep <milliseconds>\n\npause for interval before next command\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 633
    :pswitch_2
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "query <name> [type [class]] \n\nissues a query\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 577
    :pswitch_3
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "clear\n\nclears the current update packet\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 574
    :pswitch_4
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "class <class>\n\nclass of the zone to be updated (default: IN)\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 653
    :pswitch_5
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "show\n\nshows the current update packet\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 647
    :pswitch_6
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "send\n\nsends and resets the current update packet\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 624
    :pswitch_7
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "port <port>\n\nUDP/TCP port messages are sent to (default: 53)\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 611
    :pswitch_8
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "help\nhelp [topic]\n\nprints a list of commands or help about a specific\ncommand\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 607
    :pswitch_9
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "glue <name> [ttl] [class] <type> <data>\n\nspecify an additional record\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 601
    :pswitch_a
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "file <file>\n\nopens the specified file as the new input source\n(- represents stdin)\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 598
    :pswitch_b
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "edns <level>\n\nEDNS level specified when sending messages\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 595
    :pswitch_c
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "echo <text>\n\nprints the text\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 580
    :pswitch_d
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "date [-ms]\n\nprints the current date and time in human readable\nformat or as the number of milliseconds since the\nepoch"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 662
    :pswitch_e
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "ttl <ttl>\n\ndefault ttl of added records (default: 0)\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 659
    :pswitch_f
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "tcp\n\nTCP should be used to send all messages\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 621
    :pswitch_10
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "log <file>\n\nopens the specified file and uses it to log output\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 618
    :pswitch_11
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "key <name> <data>\n\nTSIG key used to sign messages\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 561
    :pswitch_12
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "add <name> [ttl] [class] <type> <data>\n\nspecify a record to be added\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 637
    :pswitch_13
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "quit\n\nquits the program\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 669
    :pswitch_14
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "# <text>\n\na comment\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 650
    :pswitch_15
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "server <name> [port]\n\nserver that receives send updates/queries\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 627
    :pswitch_16
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "prohibit <name> <type> \nprohibit <name>\n\nrequire that a set or name is not present\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 666
    :pswitch_17
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "zone <zone>\n\nzone to update (default: .\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 587
    :pswitch_18
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "delete <name> [ttl] [class] <type> <data> \ndelete <name> <type> \ndelete <name>\n\nspecify a record or set to be deleted, or that\nall records at a name should be deleted\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 565
    :pswitch_19
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "assert <field> <value> [msg]\n\nasserts that the value of the field in the last\nresponse matches the value specified.  If not,\nthe message is printed (if present) and the\nprogram exits.  The field may be any of <rcode>,\n<serial>, <tsig>, <qu>, <an>, <au>, or <ad>.\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x53ef8cba -> :sswitch_1b
        -0x4f997a55 -> :sswitch_1a
        -0x3c1e50da -> :sswitch_19
        -0x3ba14a21 -> :sswitch_18
        -0x35fdd0bd -> :sswitch_17
        0x23 -> :sswitch_16
        0x71 -> :sswitch_15
        0x178a1 -> :sswitch_14
        0x19e5f -> :sswitch_13
        0x1a344 -> :sswitch_12
        0x1bfe1 -> :sswitch_11
        0x1c1ec -> :sswitch_10
        0x2eefae -> :sswitch_f
        0x2f6a25 -> :sswitch_e
        0x2f6ea4 -> :sswitch_d
        0x2ff57c -> :sswitch_c
        0x307635 -> :sswitch_b
        0x30cf41 -> :sswitch_a
        0x349881 -> :sswitch_9
        0x35224f -> :sswitch_8
        0x35cf88 -> :sswitch_7
        0x35dafd -> :sswitch_6
        0x3923ac -> :sswitch_5
        0x5a5a978 -> :sswitch_4
        0x5a5b64d -> :sswitch_3
        0x66f18c8 -> :sswitch_2
        0x6872ed7 -> :sswitch_1
        0x414f0165 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_13
        :pswitch_6
        :pswitch_5
        :pswitch_17
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    .line 680
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 682
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 684
    :catch_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p0, p0, v0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 685
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    const/4 v2, 0x0

    goto :goto_0

    .line 688
    :cond_0
    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    .line 690
    :goto_0
    new-instance p0, Lorg/xbill/DNS/tools/update;

    invoke-direct {p0, v2}, Lorg/xbill/DNS/tools/update;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method doAdd(Lorg/xbill/DNS/Tokenizer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/xbill/DNS/tools/update;->defaultClass:I

    iget-wide v1, p0, Lorg/xbill/DNS/tools/update;->defaultTTL:J

    .line 376
    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/xbill/DNS/tools/update;->parseRR(Lorg/xbill/DNS/Tokenizer;IJ)Lorg/xbill/DNS/Record;

    move-result-object p1

    iget-object v0, p0, Lorg/xbill/DNS/tools/update;->query:Lorg/xbill/DNS/Message;

    const/4 v1, 0x2

    .line 377
    invoke-virtual {v0, p1, v1}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 378
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/tools/update;->print(Ljava/lang/Object;)V

    return-void
.end method

.method doAssert(Lorg/xbill/DNS/Tokenizer;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 480
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/xbill/DNS/tools/update;->response:Lorg/xbill/DNS/Message;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const-string p1, "No response has been received"

    .line 487
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/tools/update;->print(Ljava/lang/Object;)V

    return v3

    :cond_0
    const-string v2, "rcode"

    .line 490
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/xbill/DNS/tools/update;->response:Lorg/xbill/DNS/Message;

    .line 491
    invoke-virtual {v2}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v2

    .line 492
    invoke-static {v1}, Lorg/xbill/DNS/Rcode;->value(Ljava/lang/String;)I

    move-result v6

    if-eq v2, v6, :cond_9

    .line 493
    invoke-static {v2}, Lorg/xbill/DNS/Rcode;->string(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_1
    const-string v2, "serial"

    .line 496
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/xbill/DNS/tools/update;->response:Lorg/xbill/DNS/Message;

    .line 497
    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Message;->getSection(I)Ljava/util/List;

    move-result-object v2

    .line 498
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lorg/xbill/DNS/SOARecord;

    if-nez v6, :cond_2

    goto :goto_0

    .line 501
    :cond_2
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/SOARecord;

    .line 502
    invoke-virtual {v2}, Lorg/xbill/DNS/SOARecord;->getSerial()J

    move-result-wide v6

    .line 503
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-eqz v2, :cond_9

    .line 504
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    :goto_0
    const-string v2, "Invalid response (no SOA)"

    .line 499
    invoke-virtual {p0, v2}, Lorg/xbill/DNS/tools/update;->print(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    const-string v2, "tsig"

    .line 508
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/xbill/DNS/tools/update;->response:Lorg/xbill/DNS/Message;

    .line 509
    invoke-virtual {v2}, Lorg/xbill/DNS/Message;->isSigned()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/xbill/DNS/tools/update;->response:Lorg/xbill/DNS/Message;

    .line 510
    invoke-virtual {v2}, Lorg/xbill/DNS/Message;->isVerified()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "ok"

    goto :goto_1

    :cond_5
    const-string v2, "failed"

    goto :goto_1

    :cond_6
    const-string v2, "unsigned"

    :goto_1
    move-object v5, v2

    .line 518
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    :goto_2
    const/4 v3, 0x0

    goto :goto_3

    .line 521
    :cond_7
    invoke-static {v0}, Lorg/xbill/DNS/Section;->value(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_8

    iget-object v6, p0, Lorg/xbill/DNS/tools/update;->response:Lorg/xbill/DNS/Message;

    .line 522
    invoke-virtual {v6}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v2

    .line 523
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eq v2, v6, :cond_9

    .line 524
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 528
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid assertion keyword: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/tools/update;->print(Ljava/lang/Object;)V

    :cond_9
    :goto_3
    if-nez v3, :cond_b

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Expected "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", received "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/tools/update;->print(Ljava/lang/Object;)V

    .line 534
    :goto_4
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 535
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v1

    if-nez v1, :cond_a

    .line 540
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    goto :goto_5

    .line 538
    :cond_a
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/tools/update;->print(Ljava/lang/Object;)V

    goto :goto_4

    :cond_b
    :goto_5
    return v3
.end method

.method doDelete(Lorg/xbill/DNS/Tokenizer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/tools/update;->zone:Lorg/xbill/DNS/Name;

    .line 388
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 389
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v2

    const-wide/16 v3, 0x0

    const/16 v5, 0xff

    if-eqz v2, :cond_3

    .line 391
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->value()Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-static {v0}, Lorg/xbill/DNS/DClass;->value(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 393
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 395
    :cond_0
    invoke-static {v0}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 398
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isEOL()Z

    move-result v0

    .line 400
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    if-nez v0, :cond_1

    const/16 v3, 0xfe

    const-wide/16 v4, 0x0

    iget-object v7, p0, Lorg/xbill/DNS/tools/update;->zone:Lorg/xbill/DNS/Name;

    move-object v6, p1

    .line 402
    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object p1

    goto :goto_0

    .line 404
    :cond_1
    invoke-static {v1, v2, v5, v3, v4}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object p1

    goto :goto_0

    .line 396
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 407
    :cond_3
    invoke-static {v1, v5, v5, v3, v4}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lorg/xbill/DNS/tools/update;->query:Lorg/xbill/DNS/Message;

    const/4 v1, 0x2

    .line 410
    invoke-virtual {v0, p1, v1}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 411
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/tools/update;->print(Ljava/lang/Object;)V

    return-void
.end method

.method doFile(Lorg/xbill/DNS/Tokenizer;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Tokenizer;",
            "Ljava/util/List<",
            "Ljava/io/BufferedReader;",
            ">;",
            "Ljava/util/List<",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string v0, "-"

    .line 458
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    goto :goto_0

    .line 461
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    .line 463
    invoke-interface {p3, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 464
    new-instance p3, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-interface {p2, v1, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 466
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xbill/DNS/tools/update;->print(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method doGlue(Lorg/xbill/DNS/Tokenizer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/xbill/DNS/tools/update;->defaultClass:I

    iget-wide v1, p0, Lorg/xbill/DNS/tools/update;->defaultTTL:J

    .line 415
    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/xbill/DNS/tools/update;->parseRR(Lorg/xbill/DNS/Tokenizer;IJ)Lorg/xbill/DNS/Record;

    move-result-object p1

    iget-object v0, p0, Lorg/xbill/DNS/tools/update;->query:Lorg/xbill/DNS/Message;

    const/4 v1, 0x3

    .line 416
    invoke-virtual {v0, p1, v1}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 417
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/tools/update;->print(Ljava/lang/Object;)V

    return-void
.end method

.method doLog(Lorg/xbill/DNS/Tokenizer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object p1

    .line 472
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :try_start_1
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lorg/xbill/DNS/tools/update;->log:Ljava/io/PrintStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 472
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 475
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error opening "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xbill/DNS/tools/update;->print(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method doProhibit(Lorg/xbill/DNS/Tokenizer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/tools/update;->zone:Lorg/xbill/DNS/Name;

    .line 361
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 362
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object p1

    .line 363
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer$Token;->value()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer$Token;->value()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v1, 0xff

    :goto_0
    const/16 p1, 0xfe

    const-wide/16 v2, 0x0

    .line 370
    invoke-static {v0, v1, p1, v2, v3}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object p1

    iget-object v0, p0, Lorg/xbill/DNS/tools/update;->query:Lorg/xbill/DNS/Message;

    const/4 v1, 0x1

    .line 371
    invoke-virtual {v0, p1, v1}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 372
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/tools/update;->print(Ljava/lang/Object;)V

    return-void
.end method

.method doQuery(Lorg/xbill/DNS/Tokenizer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/xbill/DNS/tools/update;->defaultClass:I

    iget-object v1, p0, Lorg/xbill/DNS/tools/update;->zone:Lorg/xbill/DNS/Name;

    .line 428
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 429
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v2

    .line 430
    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 431
    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer$Token;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 435
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object p1

    .line 436
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 437
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer$Token;->value()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/xbill/DNS/DClass;->value(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid class"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 433
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid type"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v2, 0x1

    .line 444
    :cond_3
    :goto_0
    invoke-static {v1, v2, v0}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object p1

    .line 445
    invoke-static {p1}, Lorg/xbill/DNS/Message;->newQuery(Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/Message;

    move-result-object p1

    iget-object v0, p0, Lorg/xbill/DNS/tools/update;->res:Lorg/xbill/DNS/Resolver;

    if-nez v0, :cond_4

    .line 447
    new-instance v0, Lorg/xbill/DNS/SimpleResolver;

    iget-object v1, p0, Lorg/xbill/DNS/tools/update;->server:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/tools/update;->res:Lorg/xbill/DNS/Resolver;

    :cond_4
    iget-object v0, p0, Lorg/xbill/DNS/tools/update;->res:Lorg/xbill/DNS/Resolver;

    .line 449
    invoke-interface {v0, p1}, Lorg/xbill/DNS/Resolver;->send(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/tools/update;->response:Lorg/xbill/DNS/Message;

    .line 450
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/tools/update;->print(Ljava/lang/Object;)V

    return-void
.end method

.method doRequire(Lorg/xbill/DNS/Tokenizer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/tools/update;->zone:Lorg/xbill/DNS/Name;

    .line 333
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 334
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v2

    const-wide/16 v3, 0x0

    const/16 v5, 0xff

    if-eqz v2, :cond_2

    .line 336
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 339
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isEOL()Z

    move-result v0

    .line 341
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    if-nez v0, :cond_0

    iget v3, p0, Lorg/xbill/DNS/tools/update;->defaultClass:I

    const-wide/16 v4, 0x0

    iget-object v7, p0, Lorg/xbill/DNS/tools/update;->zone:Lorg/xbill/DNS/Name;

    move-object v6, p1

    .line 343
    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object p1

    goto :goto_0

    .line 345
    :cond_0
    invoke-static {v1, v2, v5, v3, v4}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object p1

    goto :goto_0

    .line 337
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 348
    :cond_2
    invoke-static {v1, v5, v5, v3, v4}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lorg/xbill/DNS/tools/update;->query:Lorg/xbill/DNS/Message;

    const/4 v1, 0x1

    .line 351
    invoke-virtual {v0, p1, v1}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 352
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/tools/update;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public newMessage()Lorg/xbill/DNS/Message;
    .locals 3

    .line 57
    new-instance v0, Lorg/xbill/DNS/Message;

    invoke-direct {v0}, Lorg/xbill/DNS/Message;-><init>()V

    .line 58
    invoke-virtual {v0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Header;->setOpcode(I)V

    return-object v0
.end method

.method parseRR(Lorg/xbill/DNS/Tokenizer;IJ)Lorg/xbill/DNS/Record;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/tools/update;->zone:Lorg/xbill/DNS/Name;

    .line 302
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 306
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 309
    :try_start_0
    invoke-static {v0}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    move-result-wide v2

    .line 310
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v4, v2

    goto :goto_0

    :catch_0
    nop

    move-wide v4, p3

    .line 315
    :goto_0
    invoke-static {v0}, Lorg/xbill/DNS/DClass;->value(Ljava/lang/String;)I

    move-result p3

    if-ltz p3, :cond_0

    .line 316
    invoke-static {v0}, Lorg/xbill/DNS/DClass;->value(Ljava/lang/String;)I

    move-result p2

    .line 317
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move v3, p2

    .line 320
    invoke-static {v0}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v7, p0, Lorg/xbill/DNS/tools/update;->zone:Lorg/xbill/DNS/Name;

    move-object v6, p1

    .line 324
    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object p1

    return-object p1

    .line 321
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid type: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method print(Ljava/lang/Object;)V
    .locals 1

    .line 50
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/xbill/DNS/tools/update;->log:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method sendUpdate()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/tools/update;->query:Lorg/xbill/DNS/Message;

    .line 267
    invoke-virtual {v0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Empty update message.  Ignoring."

    .line 268
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/tools/update;->print(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/tools/update;->query:Lorg/xbill/DNS/Message;

    .line 271
    invoke-virtual {v0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/xbill/DNS/tools/update;->zone:Lorg/xbill/DNS/Name;

    iget v3, p0, Lorg/xbill/DNS/tools/update;->defaultClass:I

    if-nez v0, :cond_3

    iget-object v4, p0, Lorg/xbill/DNS/tools/update;->query:Lorg/xbill/DNS/Message;

    .line 276
    invoke-virtual {v4, v1}, Lorg/xbill/DNS/Message;->getSection(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xbill/DNS/Record;

    if-nez v0, :cond_2

    .line 278
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v0, v5, v6}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    .line 280
    :cond_2
    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v5

    const/16 v6, 0xfe

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v5

    const/16 v6, 0xff

    if-eq v5, v6, :cond_1

    .line 281
    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v3

    :cond_3
    const/4 v1, 0x6

    .line 286
    invoke-static {v0, v1, v3}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v0

    iget-object v1, p0, Lorg/xbill/DNS/tools/update;->query:Lorg/xbill/DNS/Message;

    .line 287
    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    :cond_4
    iget-object v0, p0, Lorg/xbill/DNS/tools/update;->res:Lorg/xbill/DNS/Resolver;

    if-nez v0, :cond_5

    .line 291
    new-instance v0, Lorg/xbill/DNS/SimpleResolver;

    iget-object v1, p0, Lorg/xbill/DNS/tools/update;->server:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/tools/update;->res:Lorg/xbill/DNS/Resolver;

    :cond_5
    iget-object v0, p0, Lorg/xbill/DNS/tools/update;->res:Lorg/xbill/DNS/Resolver;

    iget-object v1, p0, Lorg/xbill/DNS/tools/update;->query:Lorg/xbill/DNS/Message;

    .line 293
    invoke-interface {v0, v1}, Lorg/xbill/DNS/Resolver;->send(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/tools/update;->response:Lorg/xbill/DNS/Message;

    .line 294
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/tools/update;->print(Ljava/lang/Object;)V

    return-void
.end method
