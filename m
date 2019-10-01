Return-Path: <usb-storage+bncBCILJWNIZYHBBDOCZLWAKGQEF6EYLHA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd45.google.com (mail-io1-xd45.google.com [IPv6:2607:f8b0:4864:20::d45])
	by mail.lfdr.de (Postfix) with ESMTPS id 79536C2B64
	for <lists+usb-storage@lfdr.de>; Tue,  1 Oct 2019 02:42:54 +0200 (CEST)
Received: by mail-io1-xd45.google.com with SMTP id u18sf34757801ioc.4
        for <lists+usb-storage@lfdr.de>; Mon, 30 Sep 2019 17:42:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569890573; cv=pass;
        d=google.com; s=arc-20160816;
        b=iXFOYSUhC8aI2b95A+pasy6SD8P8ENiG208zq6bVfzVf7wWlvhF36jRDX7E/GP/WF2
         SOi73p3H2njsQW+25Utz8Hp6mqWI/2VsGFFbogDImg5YwPZ4CnhRRU+zgOlxTayLdDP3
         dGKtY+JRQCwTapeofpZuv+njTqd/iGVCZkttZLaZqhbKKOj4CG+5/QluYju2j6cdrD8m
         Ge0zUsnmDfQF0QwFyaHGgZQPBi3OKWIYkYVz4BkpT0Z2ksaypAfY0Vkl7YmNJz+wvtRY
         IfMxkMJCz9fQxcmsyK5xBUdNQqZ3HE8KhMUUw4MlM3nw3RExEaEtEAtLpJTNhPoEqawj
         IBYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=UBEYtP16w0nC8UEbGD59HA96KSF//YXLJJSN2gsjKfQ=;
        b=BfuQ6F+IOUjxEc6yJRw9XZKkM8+Dr9ovfuUaHc3lwsKfoOJ45tS3a6WK4Z5Imst35p
         t3xRNiAd7Gl0TIfFVJKrXoCXF4WOMlFCUmfqCyXMo9EWiBYpxoi7FlySfoHG6o6gYQlY
         MRWzthOaExi5iTCCVtHuLmCCJXdHfbWRwOGZsY640saFJg1/f6Y0Xy9dQ0STDQzfFaxu
         TInvKaTpkf8ARqC9yk637eLNOpR71GurdIxpTBPgAUCWCGAnz7dvvyOluf+9A0VpI2xG
         nKoVA2IzZPWJo6tAx3keRw+5/vZyp9dMOceaQLVv9g/5+JNUNmPaoUKc4Swn3fAVd+g3
         3Wag==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UBEYtP16w0nC8UEbGD59HA96KSF//YXLJJSN2gsjKfQ=;
        b=DtvpcNs4mDZbHZ62xjtKTJbx9OdB8UchwgWguPCqdmDPBgPEwuME/wduAfAObAekOi
         /PWZjVkLoDH1fk5lPZquhtPfieibeGHLKtKV33PhyJH3wM4rQbjI14IraLNKBAPdIy1W
         jLTeQtXQBcVg+nNaNeSLYIyRPxaoE1/JXVNsk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UBEYtP16w0nC8UEbGD59HA96KSF//YXLJJSN2gsjKfQ=;
        b=ds+NxWVcSrTPnz2dzWgOR49a8YhDnJ5QP5HsFkL652BO9hdoDSmy8ArpA9pA/IFghD
         O8V1g5qeEf+TRLBqNZF6EPAI/WigdC8URobllIwqNcvadvl275Sqc/dV7fJck1D3DkMn
         JumAXarrQRvf4mzu/4uBP/YBqZ2l553Nk0KWaZ1yjUYIYp+Wi5lvM/NW6/VK4PEPG8oN
         bJ+rjT5OxaKBoe3iyEHbAzsbzOQRDsp7X8C+j22kfnOdqNFJqaCQekKF2ivlypP7G/Pw
         pJ/FdXq/t2TzQLNcHORMX1n3lN0sh4TRWTJEEDrAfBxR6a3goiCmC+T52nqxNve0NHST
         Chpg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAX6KYDp1GRtMKCRgCHS25tLKMKutZHjJiLtgrh2UJQk+I+1WTPr
	01Ascm5J/4P/JGmkdq5RXarCzQ==
X-Google-Smtp-Source: APXvYqxmQsNPWr0zLnMlQZR+WoskeNcOEdj0lrR1ks4uU8FQIOtSK4BzfWDcePI2YcyuEavH9rpVUA==
X-Received: by 2002:a5e:d502:: with SMTP id e2mr23101992iom.279.1569890573349;
        Mon, 30 Sep 2019 17:42:53 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a02:6a0c:: with SMTP id l12ls1599301jac.16.gmail; Mon, 30
 Sep 2019 17:42:52 -0700 (PDT)
X-Received: by 2002:a02:55c4:: with SMTP id e187mr22396021jab.32.1569890572503;
        Mon, 30 Sep 2019 17:42:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569890572; cv=none;
        d=google.com; s=arc-20160816;
        b=dylfJNGp5catJyV3b9LBmqMLkUBkuhboP0Vj7nCWQNM+jggWiLVuWgy4qL8+6vLD3X
         BrNDnGobfW54ggb/fdMZmA/qyGrO/0WRF2+B811PBwHKJcbzO91AFghdUYiqQ9x320kz
         d6BVcZsD3hd4FW7hFPmtU04oq9FUBlPmHRjlpSHFKtY+k87XvXLJ2s+YSkL8Xy0G1ih9
         edZnPuWDVXvCUq6zVoXnySXtUJcpnL7NkPDMol9eV7ulfMH837GcqD7hSofo4mLk68Kn
         FXfr3m4LlSlfpTmiJsZr5MaassZCIps7JJI5jhc04brJk5ucyzyFhc01Ie8wMPkq/E5w
         zj0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date;
        bh=5IZNPvGoeOtcxOSc3Q1U1vCu7CkKxZ9f6lm9kTrQb78=;
        b=GbniFgBoEILMXJPFCcvSUN8ve2EHlfhSpUoIJA0M79V5NZAsfV6RmXdQPabpJ0keIZ
         mGyc80NKBDTP/S1ckkYg7edlWEc9nTKZf2l92cUUkiE5YcGYovtmOJFSqTgjKDbFFui5
         0OtK+I9ohEVdUxmJNHiedptGXgP5gPHZibBNbJuHcxoQWTcHbZF9LkhOceGj75HOATm7
         ow3tjUrfLx8DwJtSxLTcowGcS5qZR3/eW+HF5M+WE1ZRl2ydYYzjp/oY/9+Ixo1FL9QD
         Lfum3Da6IUfgBEikUCgA0Z5ThMG5B8AxdNJAL3C72+o0STOeWg3dIcvW5nQVsDAY5XdU
         W2fg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
Received: from kvm5.telegraphics.com.au (kvm5.telegraphics.com.au. [98.124.60.144])
        by mx.google.com with ESMTP id b3si18797531ion.94.2019.09.30.17.42.52
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 30 Sep 2019 17:42:52 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) client-ip=98.124.60.144;
Received: from localhost (localhost.localdomain [127.0.0.1])
	by kvm5.telegraphics.com.au (Postfix) with ESMTP id 8D90B27E62;
	Mon, 30 Sep 2019 20:42:48 -0400 (EDT)
Date: Tue, 1 Oct 2019 10:42:48 +1000 (AEST)
From: Finn Thain <fthain@telegraphics.com.au>
To: Damien Le Moal <damien.lemoal@wdc.com>
cc: linux-scsi@vger.kernel.org, 
    "Martin K . Petersen" <martin.petersen@oracle.com>, 
    linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
    Alan Stern <stern@rowland.harvard.edu>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Justin Piszcz <jpiszcz@lucidpixels.com>
Subject: [usb-storage] Re: [PATCH V2] scsi: save/restore command resid for
 error handling
In-Reply-To: <20190927221602.27080-1-damien.lemoal@wdc.com>
Message-ID: <alpine.LNX.2.21.1910011011410.13@nippy.intranet>
References: <20190927221602.27080-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: fthain@telegraphics.com.au
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 best guess record for domain of fthain@telegraphics.com.au designates
 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

On Sat, 28 Sep 2019, Damien Le Moal wrote:

> When a non-passthrough command is terminated with CHECK CONDITION,
> request sense is executed by hijacking the command descriptor. Since
> scsi_eh_prep_cmnd() and scsi_eh_restore_cmnd() do not save/restore the
> original command resid, the value returned on failure of the original
> command is lost and replaced with the value set by the execution of the
> request sense command. This value may in many instances be unaligned to
> the device sector size, causing sd_done() to print a warning message
> about the incorrect unaligned resid before the command is retried or
> aborted.
> 
> Fix this problem by saving the original command resid in struct
> scsi_eh_save using scsi_eh_prep_cmnd() and restoring it in
> scsi_eh_restore_cmnd(). In addition, to make sure that the request sense
> command is executed with a correctly initialized command structure, also
> reset resid to 0 in scsi_eh_prep_cmnd() after saving the original
> command resid value in struct scsi_eh_save.
> 
> Cc: stable@vger.kernel.org
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
> 
> Changes from V1:
> * Dropped patch 2
> * Add resid reset in scsi_eh_prep_cmnd()
> 
>  drivers/scsi/scsi_error.c | 3 +++
>  include/scsi/scsi_eh.h    | 1 +
>  2 files changed, 4 insertions(+)
> 
> diff --git a/drivers/scsi/scsi_error.c b/drivers/scsi/scsi_error.c
> index 1c470e31ae81..f53828bf7ad7 100644
> --- a/drivers/scsi/scsi_error.c
> +++ b/drivers/scsi/scsi_error.c
> @@ -967,6 +967,7 @@ void scsi_eh_prep_cmnd(struct scsi_cmnd *scmd, struct scsi_eh_save *ses,
>  	ses->data_direction = scmd->sc_data_direction;
>  	ses->sdb = scmd->sdb;
>  	ses->result = scmd->result;
> +	ses->resid = scsi_get_resid(scmd);
>  	ses->underflow = scmd->underflow;
>  	ses->prot_op = scmd->prot_op;
>  	ses->eh_eflags = scmd->eh_eflags;
> @@ -977,6 +978,7 @@ void scsi_eh_prep_cmnd(struct scsi_cmnd *scmd, struct scsi_eh_save *ses,
>  	memset(scmd->cmnd, 0, BLK_MAX_CDB);
>  	memset(&scmd->sdb, 0, sizeof(scmd->sdb));
>  	scmd->result = 0;
> +	scsi_set_resid(scmd, 0);
>  
>  	if (sense_bytes) {
>  		scmd->sdb.length = min_t(unsigned, SCSI_SENSE_BUFFERSIZE,
> @@ -1029,6 +1031,7 @@ void scsi_eh_restore_cmnd(struct scsi_cmnd* scmd, struct scsi_eh_save *ses)
>  	scmd->sc_data_direction = ses->data_direction;
>  	scmd->sdb = ses->sdb;
>  	scmd->result = ses->result;
> +	scsi_set_resid(scmd, ses->resid);

When saving and restoring state, perhaps it makes more sense to bypass the 
higher level getter/setter API? Open-coded assignment statements are 
already prevalent here, rather than calls to e.g. scsi_set_prot_op(), 
set_msg_byte() etc. (There may be no code elsewhere that could tell the 
difference, but we can't use "private" members to prove it, unlike C++.)

>  	scmd->underflow = ses->underflow;
>  	scmd->prot_op = ses->prot_op;
>  	scmd->eh_eflags = ses->eh_eflags;
> diff --git a/include/scsi/scsi_eh.h b/include/scsi/scsi_eh.h
> index 3810b340551c..9caa9b262a32 100644
> --- a/include/scsi/scsi_eh.h
> +++ b/include/scsi/scsi_eh.h
> @@ -32,6 +32,7 @@ extern int scsi_ioctl_reset(struct scsi_device *, int __user *);
>  struct scsi_eh_save {
>  	/* saved state */
>  	int result;
> +	unsigned int resid;

There seems to be an inconsistency here. A signed int would be consistent 
with the getter and setter helpers. Whereas, if you open-coded the 
assignments instead, your unsigned int would make sense because 
scsi_request.resid_len really is an unsigned int.

-- 

>  	int eh_eflags;
>  	enum dma_data_direction data_direction;
>  	unsigned underflow;
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/alpine.LNX.2.21.1910011011410.13%40nippy.intranet.
