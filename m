Return-Path: <usb-storage+bncBD6LRVPZ6YGRBXNAWXWAKGQEQRW3U2Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x748.google.com (mail-qk1-x748.google.com [IPv6:2607:f8b0:4864:20::748])
	by mail.lfdr.de (Postfix) with ESMTPS id 74EF9BFC14
	for <lists+usb-storage@lfdr.de>; Fri, 27 Sep 2019 01:57:19 +0200 (CEST)
Received: by mail-qk1-x748.google.com with SMTP id d25sf889188qkk.17
        for <lists+usb-storage@lfdr.de>; Thu, 26 Sep 2019 16:57:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569542238; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vj8dZZVTALA6sQ0kZfl7q5wY/hMSlu5uyf1CuQd/HW2rBatbPfSd5WwJGiQJr8BB0v
         rZw6k0iUmESgSlyUr6YsLsQkvKaFj5EbUXamyPH5Z2TE4EN8s6hGjbjtFR56uFAaLO/5
         QS+H6sc0eEtvYw9a/Rw0/7V4OJ+ORNT652U8BEtprJxO7KpN0U54RTyagQMkyAs9CsiD
         ZGGh2SrnfquQIkQ62rYLXnFt3gLlafAGOXyfXBdeknk00Hl6KxxlIkJb+JVuMsiEbYDh
         wchI8qJb0RSyoU9Rlkl1G45e03Mjeqqnd4JPeoAJd1f33xGy9/X+tHoVoMPi5PWr8OwP
         q3Fg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:in-reply-to
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=8taIbWS/RG4MGKvRuePUbDJXdn3OaVGNOWeOoD+SK0E=;
        b=SOr5F3OUntGwLTP988BAHjUHH0frM+XEvziW8thvIAz+/wFxE/i6PvsShG1TnqMjcX
         Nea6yDRhw/jtbIgOGGG5CA7jJG68pmOZdC0tZAmtOKEuunduLiTHRJbdRT8ZY3kfVcYP
         gUr2UQULESTfsx33h7wA0nFzEhFhL+c4ZlZIAB0zRQt5fGoGMlRZgST1JdOodC7ntLX7
         1PKWuhL691/0ss6GDXu4nG7xPbzrC4zHThHnQV7oAQE+maSu80kBvJiE0xXhlqsrf59c
         yn3sSndFuoYgy7WG3HW0R3R7l0YMfEywKqp2crH1czhBFH9T10Rv72Qz7VLPvEc2LwiI
         MilA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5d89addc@rowland.harvard.edu designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5d89addc@rowland.harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8taIbWS/RG4MGKvRuePUbDJXdn3OaVGNOWeOoD+SK0E=;
        b=lw8B2u74KwNjIUmW8yNix+DLo6R3H3YE7WV2YKPdQ6xaZCZ1uSGDhXrjCuqnyrCaXv
         6J4EZnqubeGRbDH8ayFiQhKWg4G2n7cBou803vS3wlo3XtdkRfzwbJoTxNpRqT3zrdPo
         cHec3mL9S0X9UlLxrNADAg4DDoBLfEhpSZIXU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8taIbWS/RG4MGKvRuePUbDJXdn3OaVGNOWeOoD+SK0E=;
        b=Z3ZPJFutLOREp1QK1e/Zo20IJ9RzmxtbMeDcdeXyB8sybctyH5GQNxWCKjCmHeN8JX
         0xWoFiWTnwWJnIWq01QI9vhSQhHidivU2xgldqI7uq8yz68k0RhkRHp53yLrDdRQulOa
         Tj3uF5Q3nyqweOr5XZuGysU28CHbb2jexDO1UzK7fLjqsSoTc5TOm/MSf8ce/iLNnQKd
         BzVWYmbeCcHmVmhusO/oS4z6Y1ktnm9FCtLM6l+U/S2J/bTgttO9EH807y/F1CVvQM+J
         xYt4r/cgM3d4jYcT+KK//j5MEFDgb/L3qip7M+Asg1NH/JurgB4kRGMxD3Y4HAj7BqVy
         O1QQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXQ8XokwCuMojAMxtkZsRuDLKDxGpmZ4U0BjZidUR2ncT5Msqc9
	nqb08ZBQE3tc8LQIwKOQA8s27g==
X-Google-Smtp-Source: APXvYqwNvjyij4VTKqPHLLNSovmt3gU75qGo8yBB15JITNfTpwTZ7an27yvmQ//O6mWmxkrAeEkHvg==
X-Received: by 2002:a37:a38c:: with SMTP id m134mr1775390qke.484.1569542238181;
        Thu, 26 Sep 2019 16:57:18 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:a38f:: with SMTP id m137ls301824qke.15.gmail; Thu, 26
 Sep 2019 16:57:17 -0700 (PDT)
X-Received: by 2002:a37:a305:: with SMTP id m5mr1817698qke.124.1569542237641;
        Thu, 26 Sep 2019 16:57:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569542237; cv=none;
        d=google.com; s=arc-20160816;
        b=a/4hnmUlTXFqJcS8FIfRQvbtTzTu/cBxIEtvA4pr3vn8h3yHxnSKrYRZYNNCYsLaWg
         OENmFBnqvB2LS0VuY4KD0w0s2CpsSR3yQnwaJnMECV0DyeAejPritXMvXiIexg5jYIiv
         eToMAAB2YUltf4AJTaGA7ZQcMH9JO0gfV+nEoRQrOf4MJaiNAq91EQxMR6rnA6OkDpek
         OJkKzpf85Rt2E6EnNC8H1ZFnOcqT5Y2pabjYwXeX4Yqi6NKaqf+GcGhnPdoeb7ZA93aY
         gqTmaxUbLXb7hiUFN2NRUW8YuS/v5pJshH/WxURhqNjLY/5Oc4KQi8aEsPNYXSRafN54
         CAwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:in-reply-to:subject:cc:to:from:date;
        bh=8taIbWS/RG4MGKvRuePUbDJXdn3OaVGNOWeOoD+SK0E=;
        b=MiRediz5hJLzznDP77OjR2kNceEeufaOLBTX9IFh1SfgVtZTDm3REzdViYAkvI98Da
         ucyExufJAeYKJFE3kq3E05cy6CCrbbBhklcsOcUZ9kScgiqZQYaBo2NtzGLwv8eV2kmZ
         f36jsFHaFBdqNcoE2TZQzqhsrYIEIm9Xz3CNdCGIIAxvZePKc+Xaehc1X3nmrOTeeK3w
         rJ19AgpZXtO7nluEgiT3Au+3dr54kl71N2AdWP2nNCBbCJexhITP1SgM5lhavKcgc2o4
         redJj8Pwi7emxP5gMVK8cNaQv6dfdtA0zBYGh2KYWrZgvz1hB//ULJX+spxYLmjCnq2P
         Ga3A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5d89addc@rowland.harvard.edu designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5d89addc@rowland.harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id j15si845372qkl.242.2019.09.26.16.57.17
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 26 Sep 2019 16:57:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5d89addc@rowland.harvard.edu designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 26841 invoked by uid 500); 26 Sep 2019 19:57:16 -0400
Received: from localhost (sendmail-bs@127.0.0.1)
  by localhost with SMTP; 26 Sep 2019 19:57:16 -0400
Date: Thu, 26 Sep 2019 19:57:16 -0400 (EDT)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@netrider.rowland.org
To: Damien Le Moal <damien.lemoal@wdc.com>
cc: linux-scsi@vger.kernel.org, 
    "Martin K . Petersen" <martin.petersen@oracle.com>, 
     <linux-usb@vger.kernel.org>,  <usb-storage@lists.one-eyed-alien.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Justin Piszcz <jpiszcz@lucidpixels.com>
Subject: [usb-storage] Re: [PATCH 0/2] Fix SCSI & USB Storage CHECK CONDITION handling
In-Reply-To: <20190926220844.26631-1-damien.lemoal@wdc.com>
Message-ID: <Pine.LNX.4.44L0.1909261943230.24988-100000@netrider.rowland.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5d89addc@rowland.harvard.edu designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+5d89addc@rowland.harvard.edu
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

On Fri, 27 Sep 2019, Damien Le Moal wrote:

> If a non-passthrough command is terminated with a CHECK CONDITION, the
> scsi error recovery code reuses the failed command scsi_cmnd structure
> to process error recovery request sense. To preserve information
> regarding the failed command, the functions scsi_eh_prep_cmnd() and
> scsi_eh_restore_cmnd() respectively save and restore the original
> command information. However, the resid field of the failed command
> request structure is not preserved and reused for the request sense
> handling, leading to the original command having an incorrect resid
> when:
> A) The command is not retried and terminated with an error
> B) The command completes after retry and the underlying LLD does not set
>    resid for a fully completed command (resid=0)
> 
> The first patch of this series addresses case (A) above by adding resid
> as part of the command information saved using struct scsi_eh_save.

Good catch.

> Case B can be observed with a WD My Book USB disks when a read or write
> command is sent to the disk while the disk is in deep sleep mode
> (spun down) due to a long period of inactivity (~30min).
> In such case, the following command sequence happen:
> 1) The read or write command is terminated after a few seconds with
>    CHECK CONDITION and an asc/ascq of 04/01 (LOGICAL UNIT IS IN PROCESS
>    OF BECOMING READY)
> 2) In response to this failure, the USB mass storage driver triggers
>    autosense processing, reusing the command descriptor to issue a
>    request sense command with a 96B sense buffer size. The reply
>    to this command gives a NOT READY / LOGICAL UNIT IS IN PROCESS
>    OF BECOMING READY sense of 18B, resulting in a resid of 78B.
> 3) The original command is retried and failed again, with step 2
>    repeated, until the drive spins up and becomes ready.
> 4) When the original command completes after the drive has become ready,
>    the request sense command resid of 78B is seen by the scsi disk
>    driver sd_done() function and wrongly generates a warning about the
>    unaligned value reported.

But with the 1/1 patch in place, 4 won't happen any more, right?  
sd_done() will see the resid from the successful read or write.

> This problem is fixed in patch 2 by always setting a command resid to 0
> when there is no residual in usb_stor_Bulk_transport(). Note that
> usb_stor_CB_transport() does not need changes since usb_stor_bulk_srb()
> always sets the resid for a completed command, regardless of the
> residual value.

Exactly the same reasoning shows that usb_stor_Bulk_transport() also
does not need changes, doesn't it?  Which means that patch 2/2 is 
unnecessary.

Alan Stern

PS: The correct term is "residue", not "residual".  I know that the 
code sometimes uses the wrong word.

