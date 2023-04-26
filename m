Return-Path: <usb-storage+bncBC43DANU4AIBBMO4UWRAMGQEKEGUJ4Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id B17196EFA16
	for <lists+usb-storage@lfdr.de>; Wed, 26 Apr 2023 20:32:18 +0200 (CEST)
Received: by mail-qt1-x847.google.com with SMTP id d75a77b69052e-3ef5a9a1289sf90097011cf.3
        for <lists+usb-storage@lfdr.de>; Wed, 26 Apr 2023 11:32:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1682533937; cv=pass;
        d=google.com; s=arc-20160816;
        b=ncUOJFlCfqFjeqfYgLPsyrYfSnANZeJhfUn8XzKgdqKA2WrlSh6Ha8iMTvpR2mu3O+
         ZQVhzNDeL1EVSkgS/W3Dv1+HjkVAUCGQba0BbICpOP1WeoqLB93g68sMGpbui3jI6paE
         ej14/BBizAmQXC7L6O9EoEIrR359bbqFHax6pTLiom7ArLuwTQc6kNPn2X6oLn46/RSv
         Hwi4EkTHE1lrhdLkg9CHJy6HibxsTBUnVm0Ckj/gQV9dNxgVvz9Bb9XGAhzUeKtYGriP
         XevMqA31kHh/Lj/88VWiKCev4A+BirPJzTQ/fx9jksDv3o4dVTsVtQ0UxJGbAosh0RT5
         ZGZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=tOlykxTYsY5zCOCpa5qPKJbyRjY6ecNRLa2Juh0hDh0=;
        b=VktWJagbFsTkFwG/hTdqDxW+aYsGbvcahWjthsz22kQQGpuxFYuNwv3A+awx1qNpzN
         xHtyb/5T9fWODC41NZTHzBl+RQlmPdXElsl1GG7+EOyAqfMmshO0KOBLQ2Az10DsC5Zx
         Q3HW/C4pC4j1HncBBlbsiahpDfkGTASqFC0Gw8ktubOLV/2NPDpbpA1drV43+EdVRWim
         8qsQazILp7swShTQEjwuoitRCP++PDDYOg6UGJag/k+CMcPU3Jz24loKxQJgeq/ykD3e
         z9ERC1Y7ToMGneV87O6EeWNQQwoMtdtlLiPsTDc25YMiI3efbgeRUXi0uCdBmn44ydkG
         MSQQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of srs0=1gfpuf=ar=freebox.fr=mbizon@srs.iliad.fr designates 212.27.33.1 as permitted sender) smtp.mailfrom="SRS0=1gfpUf=AR=freebox.fr=mbizon@srs.iliad.fr"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1682533937; x=1685125937;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-disposition:mime-version:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tOlykxTYsY5zCOCpa5qPKJbyRjY6ecNRLa2Juh0hDh0=;
        b=TZv2bBtCrz4B7u0TGPiMMhcpapNKRp2tP5RzSIsbETyQIOMnRfZzkDbJS7wjSH39Ks
         iVOYL2igRVUf58s4XwuRRFGfTY6xAQkO2DxsgCp7ZYt4Obpe8ZHKIL3O81N4LIQ03ijP
         6MH/R0JhWew0BVEthBv3ZVsMzMhhUq3gRw+Bg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682533937; x=1685125937;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-disposition:mime-version:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tOlykxTYsY5zCOCpa5qPKJbyRjY6ecNRLa2Juh0hDh0=;
        b=F/D3vCsV/guDYhCwWBVZWbTagk89d9d1wSUxI9HhMiO7TT6a9FYxz2As2uTzz8E/JD
         4XEEIm3jSC5o/ymix4XmHP7x+Yoe9Oi0XSUq7/ZKBCJz/SOeCQstaHcOGnoaQShvzjhi
         AsfFpx+zriSaKBjrb5nsKowJEhsF/85V/PUI+JH1kcYbVmZd+4M6zT5TX70+02XXDdt3
         k7PPz46+zCZHbFUXMQfgyeApRmbsh82xrx5EQG1bpia2n1bc9CK4MgNlULRL+Eth6Smn
         b2FpdjhZy2lyuvceFD37Ibhr+HDBb/uvsgDlyl2qY3SU95tGjqoKrffSordYCPn3bYV2
         ENaQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AAQBX9et98OLDoTGnKp8XPs5tToE9THpcqOU7jjmNyVXWIu4VseC5DIE
	QZjg1uG+N9olbdgJPMDBGCeYLw==
X-Google-Smtp-Source: AKy350bBmM4I5IgjFtnyZIpJ8sv6znq3lwHqBG0DifDcHxSN1Ygefn8mzuDtFO3Kgix4BDmLLbpm6Q==
X-Received: by 2002:a05:622a:188f:b0:3ef:9f86:735d with SMTP id v15-20020a05622a188f00b003ef9f86735dmr5357057qtc.13.1682533937557;
        Wed, 26 Apr 2023 11:32:17 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:4015:b0:3ef:327d:ac61 with SMTP id
 cf21-20020a05622a401500b003ef327dac61ls18748042qtb.4.-pod-prod-gmail; Wed, 26
 Apr 2023 11:32:17 -0700 (PDT)
X-Received: by 2002:a05:622a:1788:b0:3ee:be98:9fcf with SMTP id s8-20020a05622a178800b003eebe989fcfmr8153636qtk.0.1682533936988;
        Wed, 26 Apr 2023 11:32:16 -0700 (PDT)
Received: by 2002:a05:620a:3710:b0:74a:bc73:c91e with SMTP id af79cd13be357-74ff8df3141ms85a;
        Wed, 26 Apr 2023 10:55:45 -0700 (PDT)
X-Received: by 2002:a5d:49c7:0:b0:2f6:375e:70dc with SMTP id t7-20020a5d49c7000000b002f6375e70dcmr2639525wrs.21.1682531744213;
        Wed, 26 Apr 2023 10:55:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1682531744; cv=none;
        d=google.com; s=arc-20160816;
        b=N5s0i4cRBYpPYWxZTMZ70bfSA/Di5NaOVqqARdC84w8kWcm66x/QLtWydHrWgkZivV
         gaP+y9qRSOtNqYpyL7Cdd5JDe7dv+7KP/VJip09rcBoIXlb38Qh8/CP3IH8yETjVUq5i
         zFlxpmoEDmGzxoA/beKZDrSnTpqaR2tHxgwiPxBNLY+HpFFPTfztF0Vd+wTZgDupdoT8
         2ZtVSP3uELXrMVsJkA1Re42l7zMvfwgvs1+Bh+5TouuolNSnt8vdFaAkBsBLM9L2e8eO
         nShDK3oNkzCG3L3Opnxz2eBQf/1qbLCSfZe4qYZrwIpfbDu12sy/srj8Fkzh7ZHuFsRz
         p2Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date;
        bh=r/wqx4w+fKrHX6+yzg+9ucRchCKl13p6dqOZRQAJ/FE=;
        b=T8a72rwF7VP2hlx3blmxP1JVxjI646e3z6yGfTTShC3C4SfL/X9X9VCjtkB0Q8q7B0
         myePXNCbQ9I6oZan5AgvYtcsaAsY6YS5ayle535gbmVPdHLuuFaFQspafB/h/zgOujAX
         x+zEUxTRBBfkDNOZht0k1NYhg+BAQxMD7ZKHeMAF5KEGr4SZWL4+Nu3pQ6BYpQmUtNKp
         mSgl9lk5YwFU8rbTYNPft8+tgKPgwooli//2G0/7rd8xp92ahG3zBffdED42eDX62RdW
         zgalDzxd1SSk9/fQzsRYafI38Z9BqyhqFdamqFU/OTXAU9E62YAJ1fH+3tDPM6TZGIOx
         hF7g==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of srs0=1gfpuf=ar=freebox.fr=mbizon@srs.iliad.fr designates 212.27.33.1 as permitted sender) smtp.mailfrom="SRS0=1gfpUf=AR=freebox.fr=mbizon@srs.iliad.fr"
Received: from ns.iliad.fr (ns.iliad.fr. [212.27.33.1])
        by mx.google.com with ESMTPS id u8-20020a5d6ac8000000b002f6e5805352si9753816wrw.1015.2023.04.26.10.55.44
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Apr 2023 10:55:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=1gfpuf=ar=freebox.fr=mbizon@srs.iliad.fr designates 212.27.33.1 as permitted sender) client-ip=212.27.33.1;
Received: from ns.iliad.fr (localhost [127.0.0.1])
	by ns.iliad.fr (Postfix) with ESMTP id AC66220AF4;
	Wed, 26 Apr 2023 19:55:43 +0200 (CEST)
Received: from sakura (freebox.vlq16.iliad.fr [213.36.7.13])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (3072 bits) server-digest SHA256)
	(No client certificate requested)
	by ns.iliad.fr (Postfix) with ESMTPS id 9D5C0208AC;
	Wed, 26 Apr 2023 19:55:43 +0200 (CEST)
Date: Wed, 26 Apr 2023 19:55:42 +0200
From: Maxime Bizon <mbizon@freebox.fr>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [usb-storage] Reproducible deadlock when usb-storage scsi command
 timeouts twice
Message-ID: <ZEllnjMKT8ulZbJh@sakura>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: mbizon@freebox.fr
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of srs0=1gfpuf=ar=freebox.fr=mbizon@srs.iliad.fr designates
 212.27.33.1 as permitted sender) smtp.mailfrom="SRS0=1gfpUf=AR=freebox.fr=mbizon@srs.iliad.fr"
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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


Hello,

I have a faulty 128MB USB stick that happens to randomly timeout when
reading a specific block.

After the first timeout, the scsi layer retries the command. If that
retry work, then everything goes well. But if the retried command
timeouts as well, then I get a deadlock.

To reproduce fast & reliable, I'm using these settings:

# echo 10 >/proc/sys/kernel/hung_task_timeout_secs
# echo 0x3f > /proc/sys/dev/scsi/logging_level
# cd /sys/block/sda/queue/
# echo none > scheduler
# echo 1 > nr_requests
# echo 1 > nomerges
# echo 4 > max_sectors_kb
# echo 5000 > io_timeout
# cat /dev/sda > /dev/null


dmesg with timestamps so it's easy to spot the timeouts:

[  211.732418] *** thread awakened
[  211.732429] Command READ_10 (10 bytes)
[  211.732438] bytes: 28 00 00 02 01 f8 00 00 08 00
[  211.732447] Bulk Command S 0x43425355 T 0xb8ca L 4096 F 128 Trg 0 LUN 0 CL 10
[  211.732459] xfer 31 bytes
[  211.732539] Status code 0; transferred 31/31
[  211.732550] -- transfer complete
[  211.732557] Bulk command transfer result=0
[  211.732564] xfer 4096 bytes, 1 entries
[  211.732913] Status code 0; transferred 4096/4096
[  211.732925] -- transfer complete
[  211.732931] Bulk data transfer result 0x0
[  211.732938] Attempting to get CSW...
[  211.732944] xfer 13 bytes
[  211.733036] Status code 0; transferred 13/13
[  211.733047] -- transfer complete
[  211.733054] Bulk status result = 0
[  211.733061] Bulk Status S 0x53425355 T 0xb8ca R 0 Stat 0x0
[  211.733071] scsi cmd done, result=0x0
[  211.733092] *** thread sleeping
[  211.733162] *** thread awakened
[  211.733174] Command READ_10 (10 bytes)
[  211.733183] bytes: 28 00 00 02 02 00 00 00 08 00
[  211.733192] Bulk Command S 0x43425355 T 0xb8cb L 4096 F 128 Trg 0 LUN 0 CL 10
[  211.733204] xfer 31 bytes
[  211.733288] Status code 0; transferred 31/31
[  211.733300] -- transfer complete
[  211.733306] Bulk command transfer result=0
[  211.733313] xfer 4096 bytes, 1 entries
[  218.089304] sd 0:0:0:0: [sda] tag#0 abort scheduled
[  218.109297] sd 0:0:0:0: [sda] tag#0 aborting command
[  218.109315] command_abort called
[  218.109324] -- cancelling sg request
[  218.112380] Status code -104; transferred 3072/4096
[  218.112393] -- transfer cancelled
[  218.112400] Bulk data transfer result 0x4
[  218.112407] -- command was aborted
[  218.209278] usb 1-1.2: reset high-speed USB device number 3 using orion-ehci
[  218.359923] usb_reset_device returns 0
[  218.359936] scsi command aborted
[  218.359947] *** thread sleeping
[  218.359964] sd 0:0:0:0: [sda] tag#0 retry aborted command
[  218.399298] *** thread awakened
[  218.399311] Command READ_10 (10 bytes)
[  218.399320] bytes: 28 00 00 02 02 00 00 00 08 00
[  218.399330] Bulk Command S 0x43425355 T 0xb8cc L 4096 F 128 Trg 0 LUN 0 CL 10
[  218.399342] xfer 31 bytes
[  218.399544] Status code 0; transferred 31/31
[  218.399556] -- transfer complete
[  218.399562] Bulk command transfer result=0
[  218.399570] xfer 4096 bytes, 1 entries
[  225.129297] sd 0:0:0:0: [sda] tag#0 previous abort failed
[  225.129337] scsi host0: Waking error handler thread
[  225.129358] scsi host0: scsi_eh_0: waking up 0/1/1
[  225.129375] scsi host0: scsi_eh_prt_fail_stats: cmds failed: 0, cancel: 1
[  225.129387] scsi host0: Total of 1 commands on 1 devices require eh work
[  225.129402] sd 0:0:0:0: scsi_eh_0: Sending BDR
[  225.129414] device_reset called
[  235.369290] INFO: task scsi_eh_0:173 blocked for more than 10 seconds.
[  235.369311]       Not tainted 6.3.0-00615-gffe64935a4a2 #9
[  235.369320] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
[  235.369327] task:scsi_eh_0       state:D stack:0     pid:173   ppid:2      flags:0x00000000
[  235.369350]  __schedule from schedule+0x70/0xac
[  235.369374]  schedule from schedule_preempt_disabled+0x24/0x34
[  235.369393]  schedule_preempt_disabled from __mutex_lock.constprop.0+0x14c/0x280
[  235.369412]  __mutex_lock.constprop.0 from device_reset+0x28/0x64
[  235.369433]  device_reset from scsi_try_bus_device_reset+0x24/0x58
[  235.369452]  scsi_try_bus_device_reset from scsi_eh_ready_devs+0x2f0/0x97c
[  235.369470]  scsi_eh_ready_devs from scsi_error_handler+0x238/0x49c
[  235.369488]  scsi_error_handler from kthread+0xc4/0xdc
[  235.369507]  kthread from ret_from_fork+0x14/0x3c
[  235.369567] INFO: task usb-storage:176 blocked for more than 10 seconds.
[  235.369576]       Not tainted 6.3.0-00615-gffe64935a4a2 #9
[  235.369583] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
[  235.369590] task:usb-storage     state:D stack:0     pid:176   ppid:2      flags:0x00000000
[  235.369606]  __schedule from schedule+0x70/0xac
[  235.369622]  schedule from schedule_timeout+0x18/0xd0
[  235.369641]  schedule_timeout from __wait_for_common+0xc0/0x13c
[  235.369660]  __wait_for_common from usb_sg_wait+0x10c/0x118
[  235.369677]  usb_sg_wait from usb_stor_bulk_transfer_sglist+0xc4/0x118
[  235.369695]  usb_stor_bulk_transfer_sglist from usb_stor_bulk_srb+0x24/0x3c
[  235.369713]  usb_stor_bulk_srb from usb_stor_Bulk_transport+0x164/0x44c
[  235.369731]  usb_stor_Bulk_transport from usb_stor_invoke_transport+0x20/0x5c4
[  235.369750]  usb_stor_invoke_transport from usb_stor_control_thread+0x1a4/0x2bc
[  235.369769]  usb_stor_control_thread from kthread+0xc4/0xdc
[  235.369786]  kthread from ret_from_fork+0x14/0x3c


Turns out eh_device_reset_handler() is called with a pending command
(srb == us->srb), and I don't know if the usb code was expecting
eh_abort_handler() to be called first.

This patch fixes the issue, not sure if it's correct:

--- a/drivers/usb/storage/scsiglue.c
+++ b/drivers/usb/storage/scsiglue.c
@@ -455,6 +455,9 @@ static int device_reset(struct scsi_cmnd *srb)
 
        usb_stor_dbg(us, "%s called\n", __func__);
 
+       if (us->srb == srb)
+               command_abort(srb);
+
        /* lock the device pointers and do the reset */
        mutex_lock(&(us->dev_mutex));
        result = us->transport_reset(us);


-- 
Maxime

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/ZEllnjMKT8ulZbJh%40sakura.
