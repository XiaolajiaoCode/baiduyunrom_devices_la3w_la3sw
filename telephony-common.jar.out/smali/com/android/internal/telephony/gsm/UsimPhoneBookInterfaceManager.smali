.class public Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;
.super Ljava/lang/Object;
.source "UsimPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$PbrFile;,
        Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final USIM_EFAAS_TAG:I = 0xc7

.field private static final USIM_EFADN_TAG:I = 0xc0

.field private static final USIM_EFANR_TAG:I = 0xc4

.field private static final USIM_EFCCP1_TAG:I = 0xcb

.field private static final USIM_EFEMAIL_TAG:I = 0xca

.field private static final USIM_EFEXT1_TAG:I = 0xc2

.field private static final USIM_EFGRP_TAG:I = 0xc6

.field private static final USIM_EFGSD_TAG:I = 0xc8

.field private static final USIM_EFIAP_TAG:I = 0xc1

.field private static final USIM_EFPBC_TAG:I = 0xc5

.field private static final USIM_EFSNE_TAG:I = 0xc3

.field private static final USIM_EFUID_TAG:I = 0xc9

.field private static final USIM_TYPE1_TAG:I = 0xa8

.field private static final USIM_TYPE2_TAG:I = 0xa9

.field private static final USIM_TYPE3_TAG:I = 0xaa


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mIsPbrPresent:Ljava/lang/Boolean;

.field private mLock:Ljava/lang/Object;

.field private mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$PbrFile;

.field private myHandler:Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$MyHandler;

.field protected recordSize:[I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    .line 95
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UsimPBIfM_Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->handlerThread:Landroid/os/HandlerThread;

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 97
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$MyHandler;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->myHandler:Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$MyHandler;

    .line 99
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$PbrFile;

    .line 102
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->createPbrFile(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private checkThread()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->myHandler:Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$MyHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$MyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "query() called on the main UI thread!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call query on this provder from the main UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    return-void
.end method

.method private createPbrFile(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_0

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$PbrFile;

    .line 163
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 167
    :goto_0
    return-void

    .line 166
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$PbrFile;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$PbrFile;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$PbrFile;

    goto :goto_0
.end method

.method private readAdnRecordsSizeAndWait(I)V
    .locals 6
    .parameter "recNum"

    .prologue
    .line 133
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 134
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v2, :cond_0

    .line 138
    const-string v2, "readAdnRecordsSizeAndWait"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0xc0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->myHandler:Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$MyHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 142
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "Interrupted Exception in readAdnFileAndWait"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readPbrFileAndWait()V
    .locals 5

    .prologue
    .line 150
    const-string v1, "readPbrFileAndWait"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x4f30

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->myHandler:Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$MyHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "Interrupted Exception in readAdnFileAndWait"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 180
    return-void
.end method

.method public getUsimAdnRecordsSize(I)[I
    .locals 5
    .parameter "efid"

    .prologue
    const/4 v2, 0x0

    .line 107
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 108
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->checkThread()V

    .line 109
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 110
    monitor-exit v3

    .line 128
    :goto_0
    return-object v2

    .line 114
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$PbrFile;

    if-nez v4, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->readPbrFileAndWait()V

    .line 118
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$PbrFile;

    if-nez v4, :cond_2

    .line 119
    monitor-exit v3

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 121
    :cond_2
    const/4 v2, 0x3

    :try_start_1
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->recordSize:[I

    .line 122
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 123
    .local v1, numRecs:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 124
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->readAdnRecordsSizeAndWait(I)V

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->recordSize:[I

    goto :goto_0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 183
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsimPbInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 187
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsimPbInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method
