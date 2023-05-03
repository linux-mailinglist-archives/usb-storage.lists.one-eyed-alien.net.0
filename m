Return-Path: <usb-storage+bncBAABBJXFZGRAMGQE2CLNOWQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com [209.85.128.199])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1CA6F5A4F
	for <lists+usb-storage@lfdr.de>; Wed,  3 May 2023 16:41:43 +0200 (CEST)
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-559d35837bbsf99220877b3.3
        for <lists+usb-storage@lfdr.de>; Wed, 03 May 2023 07:41:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1683124902; cv=pass;
        d=google.com; s=arc-20160816;
        b=zfRybf47ZsI3DBDdQVT8kbVWCxLJvE5KUvttxYa/MTMtchFOiAaG9MiVNZ72Erq7qm
         rrI61Jg5+JMo4IdM/o1uQvaz4QA4/+O1IpjXIJQf1vOUad+pr2neb6rN39N1G474tqyS
         8HeSonYQvW2zl4oDkdMCghC6viVDF6oYUx0Aav4s6zE/+GdOqXAmqr/HAPGImbs8GH11
         9mA5CjE1KFCqYbqRu3j/YEnRu49PzNR5Eeu4O3So5pY7jlM+Zi0Cl8ksOEzD3E0CWxJf
         /diLUA3bqaX8HIsCo1dS9PRC4S2aWLGrQWnkRhBi+kHjpFF7ija9WnTWIj211lfN8c+4
         XW5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:sender:in-reply-to:content-disposition
         :references:message-id:subject:cc:to:from:date;
        bh=WFq0Mdq5v/SkqmI+aiUV72FgQypQArzpE3jwCTwK5Dw=;
        b=CKxlNVvZaE98xlznwckYvBq6UnZ/7jAWykshhoJuUDWQ+MIUZh4Fr76dMG/0Muyow+
         6rOsMzTD5CnSTIrj3pZ78oKTBcGy2sTyBUIBCqvPpwrsxUYgBerj9bDhiIE1fq/YJIfn
         4KsaNaKUlwEsz1fdJgeubPXaxm5Sbv1yGhl09KcnaCo2a2JL34paCTSKab5VmuhDMowQ
         /tFc9PrPK7KsrhOIT+MDzDCVAASrp8CGtqGcHASZFi2FbJPi/G6SoKaCirE6iiId5BUc
         hzwF9LkMI2UJhoJ1+6bET6+3FmW+OwFOLhkKRM0wLLhcXi5N2XuG+xg3ppIJ1pjKuiwl
         HLTw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=aHRxPc6+;
       spf=pass (google.com: domain of bblock@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=bblock@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683124902; x=1685716902;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:content-transfer-encoding:sender
         :in-reply-to:content-disposition:references:message-id:subject:cc:to
         :from:date:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WFq0Mdq5v/SkqmI+aiUV72FgQypQArzpE3jwCTwK5Dw=;
        b=S0+Kt38gvLfKMJpCZzs6UcQ69I8SzG+YUnnVhIZyM6aXi9vCy2OqGD4Cg7EoUv2xHT
         dWzm51tt2gogQ6GhiAK0xaYplGXyCFRq8p6H1xB/QFZaw7uatRO07JJgFWAI1+I5n0wf
         uYNJJtKkF56cVE8XL9WXZ3hbYEIC3/kxR8BAnC2DPNz9ZdHC2c4sKlfUjoC7LmEjjhFr
         ANVnVt8vjxg1e43IcpL7y2DAwYiQksY9I2JIHoWZtZpScFVyH3YDlBawOUhRl70asRZT
         Y9ppXUgf9bk4GC/A6+Qtl+ye9yesE6iOfXMvZlw37xg+BIkfOhLv6/JHOZhIU06/jAjN
         kMTA==
X-Gm-Message-State: AC+VfDxEPaoYtXwOl7+yH3mIJfglicRunz2GU9drXDPgBtYa6wZ9XQK4
	sMW4+09F9xcj8cySTxO0EPkx8Q==
X-Google-Smtp-Source: ACHHUZ6PUlljZscmG7FFl2QoVHjlDiVk/Utv4Zd7UHv2HDElL3lrCKRfJtjl9bKW+leZtn7stGeHPQ==
X-Received: by 2002:a81:7601:0:b0:54f:899f:890f with SMTP id r1-20020a817601000000b0054f899f890fmr12864643ywc.9.1683124902674;
        Wed, 03 May 2023 07:41:42 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:58e:0:b0:b8f:5ff4:69ae with SMTP id 136-20020a25058e000000b00b8f5ff469aels10429150ybf.3.-pod-prod-gmail;
 Wed, 03 May 2023 07:41:42 -0700 (PDT)
X-Received: by 2002:a05:6902:100e:b0:b8b:f584:6b73 with SMTP id w14-20020a056902100e00b00b8bf5846b73mr8561163ybt.10.1683124902201;
        Wed, 03 May 2023 07:41:42 -0700 (PDT)
Received: by 2002:a05:690c:d96:b0:55a:2feb:a386 with SMTP id 00721157ae682-55b31021981ms7b3;
        Wed, 3 May 2023 03:24:47 -0700 (PDT)
X-Received: by 2002:a81:a154:0:b0:55a:64b3:fc13 with SMTP id y81-20020a81a154000000b0055a64b3fc13mr1881716ywg.1.1683109487201;
        Wed, 03 May 2023 03:24:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1683109487; cv=none;
        d=google.com; s=arc-20160816;
        b=vQx3Ziq65tvr1VB7NfUqx8ewNj1DTkS6mrFcP0DE2oITPwgRyArMxWhP0nm7l06rML
         kKXJ4h32TIqt//o6MPBrZsppg1ptYBA0gHch3ycfp2y7CbuNGxDLfU2lZp9wwvkkPsx9
         aD2MpIaZ9UbjXKV6BB1/BvFnmhl6HFd9NHabhvSjRaozrO1pNizvDksGhqXNziXIJRmI
         PtaMgsW7YOnTmUM5ypa7PHIsSRPxgC79PSKGSg0T3l9uFpgmtx53T/viYLCsEd7wcczT
         FOnCFZxWqTcmzAm/xDeqmOJg4fEIugFTsqnShkhyIzn1ANOUZsOrU+Cs2G7c3OnpYTnH
         Swig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:sender:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=dye8a+H8bucNlWEZCzbiDWruWo73ghXExz9ggZmIr3w=;
        b=kqmnFEn9FadOQWhl/i2Gq74Si7yqRj2bJzX3qMM+SFE3LLSNgo0TIeSN7QS7lHkYG0
         byD8Gbxo6zHKG6voEUoIUACVPjcwnCE7QurLgOAGtONgiDUzZjnCbs9bfW6PSxPThKiN
         KDO8jpnVBD8SphGkprAcUbqQiGGKsnMd2N8hb5nkQkDVOeMCATjQoze+UpsLuIagbbqF
         S2Mrpr7s+73H5YbdCGuTTuJ/J9ZcOxCJ9kJGQYe8cY8H8/98TijrBkcLHXksFnKeFN6B
         DTRt26gDtv378quTd83HEiWIrajGzhmN2zTHPBOiinLOrXhD9zayQUeJwnbPI6Edl0Qe
         MEEg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=aHRxPc6+;
       spf=pass (google.com: domain of bblock@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=bblock@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by mx.google.com with ESMTPS id t70-20020a0dea49000000b00559e2100f36si10358820ywe.63.2023.05.03.03.24.47
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 May 2023 03:24:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of bblock@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0356516.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 343ALsSr027349;
	Wed, 3 May 2023 10:24:46 GMT
Received: from ppma05fra.de.ibm.com (6c.4a.5195.ip4.static.sl-reverse.com [149.81.74.108])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qbn75s764-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 03 May 2023 10:24:46 +0000
Received: from pps.filterd (ppma05fra.de.ibm.com [127.0.0.1])
	by ppma05fra.de.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 343A8xqm024267;
	Wed, 3 May 2023 10:24:44 GMT
Received: from smtprelay05.fra02v.mail.ibm.com ([9.218.2.225])
	by ppma05fra.de.ibm.com (PPS) with ESMTPS id 3q8tv6hs5j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 03 May 2023 10:24:43 +0000
Received: from smtpav05.fra02v.mail.ibm.com (smtpav05.fra02v.mail.ibm.com [10.20.54.104])
	by smtprelay05.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 343AOfSs55640568
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 3 May 2023 10:24:41 GMT
Received: from smtpav05.fra02v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 779B0202C3;
	Wed,  3 May 2023 10:24:41 +0000 (GMT)
Received: from smtpav05.fra02v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 52BFB202C0;
	Wed,  3 May 2023 10:24:41 +0000 (GMT)
Received: from t480-pf1aa2c2 (unknown [9.171.89.52])
	by smtpav05.fra02v.mail.ibm.com (Postfix) with ESMTPS;
	Wed,  3 May 2023 10:24:41 +0000 (GMT)
Received: from bblock by t480-pf1aa2c2 with local (Exim 4.96)
	(envelope-from <bblock@linux.ibm.com>)
	id 1pu9f6-004KYC-27;
	Wed, 03 May 2023 12:24:40 +0200
Date: Wed, 3 May 2023 10:24:40 +0000
From: Benjamin Block <bblock@linux.ibm.com>
To: Alan Stern <stern@rowland.harvard.edu>, Hannes Reinecke <hare@suse.de>
Cc: Maxime Bizon <mbizon@freebox.fr>, linux-usb@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net, linux-scsi@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Martin K. Petersen" <martin.petersen@oracle.com>
Subject: [usb-storage] Re: Reproducible deadlock when usb-storage scsi command
 timeouts twice
Message-ID: <20230503102440.GL18384@t480-pf1aa2c2.fritz.box>
References: <ZEllnjMKT8ulZbJh@sakura>
 <34a2e50b-e899-45ee-ac14-31fa0bb1616b@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <34a2e50b-e899-45ee-ac14-31fa0bb1616b@rowland.harvard.edu>
Sender: Benjamin Block <bblock@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: Aq1GZr53W8dLYoqg3nEeYjYxG42IRFNC
X-Proofpoint-GUID: Aq1GZr53W8dLYoqg3nEeYjYxG42IRFNC
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-03_06,2023-04-27_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 mlxscore=0
 phishscore=0 priorityscore=1501 adultscore=0 bulkscore=0 malwarescore=0
 spamscore=0 mlxlogscore=759 impostorscore=0 lowpriorityscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2305030084
X-Original-Sender: bblock@linux.ibm.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=aHRxPc6+;       spf=pass (google.com:
 domain of bblock@linux.ibm.com designates 148.163.158.5 as permitted sender)
 smtp.mailfrom=bblock@linux.ibm.com;       dmarc=pass (p=REJECT sp=NONE
 dis=NONE) header.from=ibm.com
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

On Wed, Apr 26, 2023 at 03:20:07PM -0400, Alan Stern wrote:
> > dmesg with timestamps so it's easy to spot the timeouts:
>=20
> > [  211.733162] *** thread awakened
> > [  211.733174] Command READ_10 (10 bytes)
> > [  211.733183] bytes: 28 00 00 02 02 00 00 00 08 00
> > [  211.733192] Bulk Command S 0x43425355 T 0xb8cb L 4096 F 128 Trg 0 LU=
N 0 CL 10
> > [  211.733204] xfer 31 bytes
> > [  211.733288] Status code 0; transferred 31/31
> > [  211.733300] -- transfer complete
> > [  211.733306] Bulk command transfer result=3D0
> > [  211.733313] xfer 4096 bytes, 1 entries
> > [  218.089304] sd 0:0:0:0: [sda] tag#0 abort scheduled
> > [  218.109297] sd 0:0:0:0: [sda] tag#0 aborting command
> > [  218.109315] command_abort called
> > [  218.109324] -- cancelling sg request
> > [  218.112380] Status code -104; transferred 3072/4096
> > [  218.112393] -- transfer cancelled
> > [  218.112400] Bulk data transfer result 0x4
> > [  218.112407] -- command was aborted
> > [  218.209278] usb 1-1.2: reset high-speed USB device number 3 using or=
ion-ehci
> > [  218.359923] usb_reset_device returns 0
> > [  218.359936] scsi command aborted
> > [  218.359947] *** thread sleeping
> > [  218.359964] sd 0:0:0:0: [sda] tag#0 retry aborted command
> > [  218.399298] *** thread awakened
> > [  218.399311] Command READ_10 (10 bytes)
> > [  218.399320] bytes: 28 00 00 02 02 00 00 00 08 00
> > [  218.399330] Bulk Command S 0x43425355 T 0xb8cc L 4096 F 128 Trg 0 LU=
N 0 CL 10
> > [  218.399342] xfer 31 bytes
> > [  218.399544] Status code 0; transferred 31/31
> > [  218.399556] -- transfer complete
> > [  218.399562] Bulk command transfer result=3D0
> > [  218.399570] xfer 4096 bytes, 1 entries
> > [  225.129297] sd 0:0:0:0: [sda] tag#0 previous abort failed
> > [  225.129337] scsi host0: Waking error handler thread
> > [  225.129358] scsi host0: scsi_eh_0: waking up 0/1/1
> > [  225.129375] scsi host0: scsi_eh_prt_fail_stats: cmds failed: 0, canc=
el: 1
> > [  225.129387] scsi host0: Total of 1 commands on 1 devices require eh =
work
> > [  225.129402] sd 0:0:0:0: scsi_eh_0: Sending BDR
> > [  225.129414] device_reset called
> > [  235.369290] INFO: task scsi_eh_0:173 blocked for more than 10 second=
s.
> > [  235.369311]       Not tainted 6.3.0-00615-gffe64935a4a2 #9
> > [  235.369320] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disab=
les this message.
> > [  235.369327] task:scsi_eh_0       state:D stack:0     pid:173   ppid:=
2      flags:0x00000000
> > [  235.369350]  __schedule from schedule+0x70/0xac
> > [  235.369374]  schedule from schedule_preempt_disabled+0x24/0x34
> > [  235.369393]  schedule_preempt_disabled from __mutex_lock.constprop.0=
+0x14c/0x280
> > [  235.369412]  __mutex_lock.constprop.0 from device_reset+0x28/0x64
> > [  235.369433]  device_reset from scsi_try_bus_device_reset+0x24/0x58
> > [  235.369452]  scsi_try_bus_device_reset from scsi_eh_ready_devs+0x2f0=
/0x97c
> > [  235.369470]  scsi_eh_ready_devs from scsi_error_handler+0x238/0x49c
> > [  235.369488]  scsi_error_handler from kthread+0xc4/0xdc
> > [  235.369507]  kthread from ret_from_fork+0x14/0x3c
> > [  235.369567] INFO: task usb-storage:176 blocked for more than 10 seco=
nds.
> > [  235.369576]       Not tainted 6.3.0-00615-gffe64935a4a2 #9
> > [  235.369583] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disab=
les this message.
> > [  235.369590] task:usb-storage     state:D stack:0     pid:176   ppid:=
2      flags:0x00000000
> > [  235.369606]  __schedule from schedule+0x70/0xac
> > [  235.369622]  schedule from schedule_timeout+0x18/0xd0
> > [  235.369641]  schedule_timeout from __wait_for_common+0xc0/0x13c
> > [  235.369660]  __wait_for_common from usb_sg_wait+0x10c/0x118
> > [  235.369677]  usb_sg_wait from usb_stor_bulk_transfer_sglist+0xc4/0x1=
18
> > [  235.369695]  usb_stor_bulk_transfer_sglist from usb_stor_bulk_srb+0x=
24/0x3c
> > [  235.369713]  usb_stor_bulk_srb from usb_stor_Bulk_transport+0x164/0x=
44c
> > [  235.369731]  usb_stor_Bulk_transport from usb_stor_invoke_transport+=
0x20/0x5c4
> > [  235.369750]  usb_stor_invoke_transport from usb_stor_control_thread+=
0x1a4/0x2bc
> > [  235.369769]  usb_stor_control_thread from kthread+0xc4/0xdc
> > [  235.369786]  kthread from ret_from_fork+0x14/0x3c
> >=20
> >=20
> > Turns out eh_device_reset_handler() is called with a pending command
> > (srb =3D=3D us->srb), and I don't know if the usb code was expecting
> > eh_abort_handler() to be called first.
>=20
> usb-storage definitely expects any pending command to be aborted before=
=20
> a reset is attempted.

From a cursory look at the logs above, SCSI ML does just try that:

> > [  218.089304] sd 0:0:0:0: [sda] tag#0 abort scheduled
> > [  218.109297] sd 0:0:0:0: [sda] tag#0 aborting command

calls `hostt->eh_abort_handler()` on the late request, and retries it
after success.

> > [  218.359964] sd 0:0:0:0: [sda] tag#0 retry aborted command
> > [  225.129297] sd 0:0:0:0: [sda] tag#0 previous abort failed

but it times out again, then we go straight into EH:

> > [  225.129337] scsi host0: Waking error handler thread
> > [  225.129358] scsi host0: scsi_eh_0: waking up 0/1/1
> > [  225.129375] scsi host0: scsi_eh_prt_fail_stats: cmds failed: 0, canc=
el: 1
> > [  225.129387] scsi host0: Total of 1 commands on 1 devices require eh =
work
> > [  225.129402] sd 0:0:0:0: scsi_eh_0: Sending BDR

IIRC in the past we used to call Abort a second time from within the EH
thread before trying the different resets, but that was removed at some
point a couple of years ago. Now we add the command straight to the EH
list, and start with the TMF LUN reset, which ought to implicitly abort
the command as well on the target.

> > This patch fixes the issue, not sure if it's correct:
> >=20
> > --- a/drivers/usb/storage/scsiglue.c
> > +++ b/drivers/usb/storage/scsiglue.c
> > @@ -455,6 +455,9 @@ static int device_reset(struct scsi_cmnd *srb)
> > =20
> >         usb_stor_dbg(us, "%s called\n", __func__);
> > =20
> > +       if (us->srb =3D=3D srb)
> > +               command_abort(srb);
> > +
> >         /* lock the device pointers and do the reset */
> >         mutex_lock(&(us->dev_mutex));
> >         result =3D us->transport_reset(us);
>=20
> Maybe...  But it would be better to check first whether the SCSI core is=
=20
> supposed to be reusing an active srb in this way.

IIRC it does indeed doe that by design. It saves the old command's
meta-data, and piggy-backs the TMF onto the existing request to push it
into the device driver.

Hannes probably knows the complete story.

>=20
> Martin, can tell us what is supposed to happen here?  Is the=20
> eh_device_reset_handler routine supposed to be called with a scsi_cmnd=20
> for a currently active command?

--=20
Best Regards, Benjamin Block        /        Linux on IBM Z Kernel Developm=
ent
IBM Deutschland Research & Development GmbH    /   https://www.ibm.com/priv=
acy
Vors. Aufs.-R.: Gregor Pillen         /         Gesch=C3=A4ftsf=C3=BChrung:=
 David Faller
Sitz der Ges.: B=C3=B6blingen     /    Registergericht: AmtsG Stuttgart, HR=
B 243294

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/20230503102440.GL18384%40t480-pf1aa2=
c2.fritz.box.
