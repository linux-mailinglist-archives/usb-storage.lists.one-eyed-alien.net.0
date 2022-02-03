Return-Path: <usb-storage+bncBC4OPUNB3AJRBKXC6CHQMGQERJFGFNA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x445.google.com (mail-wr1-x445.google.com [IPv6:2a00:1450:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C494A8CAB
	for <lists+usb-storage@lfdr.de>; Thu,  3 Feb 2022 20:46:51 +0100 (CET)
Received: by mail-wr1-x445.google.com with SMTP id l22-20020adfa396000000b001d8e6467fe8sf1092975wrb.6
        for <lists+usb-storage@lfdr.de>; Thu, 03 Feb 2022 11:46:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1643917611; cv=pass;
        d=google.com; s=arc-20160816;
        b=MpANCWAVbjnO0IitbISSR3N70PFy3v3P3zLo5jrmGSx8A0Gs2MHdQhtpqpFfB79yKe
         +1Zrknk+t3f1Rk1mjF3BC/O3sOed7Di7tzHawN/xmofSXGdYn3k6FkLj1Vcj0paJ6z9f
         VcvvLE21EnrHQboNmohaxjg9oHbKhdJ+F26WL1djhvba4DRsJrFfK4iL+NjhmF6gW8/J
         zKdf86xGCEG44mZkpQWSOvzm6fb7sfSCB5p2IG9GCE51sYgaJrfbMNrbIbyx55eTDYDG
         2/X1Zm6Zorb7GJt9aI2TEG9dji2C4L9gj3BIqVsj7n1U5vKiXyFq7BLB5+Aj9ts6BLPC
         S7LA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=jUtRsjK3NuNODOd4XbtqCFM1+HYamW5gLlO8klY1DA0=;
        b=AIPJ9+H/nuvTwfC71Tr8L2U+BA85mRze28ONq1nQ028P1c6dpalxJqConNWREBZ2C6
         UbvbSUaqaTe8irxONL1xRbcxwGPylFFMm+zc8YwNxrpYfq34kgBTUIB0DO8w1d85qtCd
         +pEM6W0LKPAmqyuxMvcJ49G/sn2f3VMrTWAotktgNSN0TRz9DsCwS78RgliANoqYH2Oa
         NFpCB+jHe0Q8eaWA1YXd2hN4fmv/w4htckn3u72E1RSAfBkb1K/n0ssF5VT6NtEGlLGZ
         oE4dUyHBBQDe7QPlawPrOLtt29Yk1PrPJrGqdIhBVfpcbkMYprHG4GgOP33wWNWIM8mb
         pxMw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of sebastian@breakpoint.cc designates 2a0a:51c0:0:12e:520::1 as permitted sender) smtp.mailfrom=sebastian@breakpoint.cc
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jUtRsjK3NuNODOd4XbtqCFM1+HYamW5gLlO8klY1DA0=;
        b=VhvdyQTX2fI2OaGB1g9SbHerJCJMYYvM7Ma2vWtvzraaqc+bpTUdN7oKrH3BPBh3pC
         VlT2MLCMs42Lsuf8C4sX1+jVkPCG+PGdxPXkc4reSiAa2Q6IuW6N0m7b8BHIfLZdLoJQ
         p09mgqoGtTjUu+Lc8aEZzJHX3Fh9v55s77sYs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jUtRsjK3NuNODOd4XbtqCFM1+HYamW5gLlO8klY1DA0=;
        b=QCp+YnQu0tHhVFJJugfqMSoXHIpcjgb4ti3pG665eX89SuART6J88xxEz06fogXKzF
         0fr2x8KPmgtCtGh5sVpT/A11KqxWNeMD3FiGijtJSFm0HabNOEgDrIP+XycUL5E6rU3N
         kjdYfrlSL0oMeZJFdJYZQIgxWYiaMZlAGr/oEkPLvkRS8495PY98I1XyA6dnfIgDfDTd
         jOC3IePRfVSJATpWo0Ss8khgWWuRcj0JPmQ4htjMxp2JBTjEGnOHJbVaYazJWhI9z0S0
         Fp7VDVaedc0NWq+U9EaHtVa7XDCg3z1szeJZMB4/U5MK05Gsu21SKFVAZKxE/IGNItsW
         HbaQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531uz03Qf3rIppmNlHS5cDUUT+UmOT8nKKf96sryKDzoC8+qQHKT
	kH7M4CM2XUfpAG+RUZdvNfPjqQ==
X-Google-Smtp-Source: ABdhPJwYpg+emxZVLH8RKofLH5t/4alk7mlfbE7DfZeoMb19xKqefMQl/a58wyyr8EVaNDBwF6SkVQ==
X-Received: by 2002:a05:600c:4f08:: with SMTP id l8mr11762305wmq.112.1643917611008;
        Thu, 03 Feb 2022 11:46:51 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:adf:a4d5:: with SMTP id h21ls62657wrb.1.gmail; Thu, 03 Feb
 2022 11:46:49 -0800 (PST)
X-Received: by 2002:a5d:64e9:: with SMTP id g9mr23567876wri.341.1643917609795;
        Thu, 03 Feb 2022 11:46:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1643917609; cv=none;
        d=google.com; s=arc-20160816;
        b=LhQbWVQ0fpzmZ9UZitcDJwmHXsP0j42aYv0lln5Y4gPxpNs+j8bBbbh0DFQEO6DScL
         qbRRdVuprw/0eqOTmcowrYxWH3OjIfrEXfh5WeCXubVJ+OM2d8c2nsosctpbOVCOT+PZ
         LwR8PZhRmvnA1Iwlxs4tc/jqgCsU7yqArheT1zPDLdLx0G4U1xgH1ti7H11UQJStYSy7
         X4NZVHBU7xtr/1BLmq1e6m+EAFlUBAbiTM4FQLlv1/0f8FopCkVHuEhgxbCtFLaKHnkm
         MLWqjHwIN98+x0ZKlHhm2ll7Fwvh3bZGKOwakRm2buzuyQYOo0ZKgFqiso8Cmr+DJr9F
         eA0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=PP0+URGMbIQ/jhtUv+vHoydHl1nhnvOHeGaMCJaxSg4=;
        b=xFL3zLUHs5I1Bm1HobGlRIVX+DAzaBirV+5AYj7PiE0pNZDClFrR2TQ1fmnK0DDI7Q
         oOE2/nUcEwMySMVY7RIu/T3LzkqP1yXMBfnxGdQ2iD7rg3jZUy70IIL814jLi4fD0/4q
         nLvGBiBBKg0ax6ZTEd2qOXKVVSBfeD7xFnnLDtkBDYJxech7Bmro+5/SvxbgcKs9bnKw
         yo5879jigifxsP4sE1dCUKycZdTlYGBcecKoEI3HtwumH2Pxw79UPnId4fN4DB0/sVE/
         BApz38J1QaABTHB+QEBSal9nubbYiD0FyCCCv9zZyR9pejuORR3IMoVcGjiVPx3qI9W7
         S1ZA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of sebastian@breakpoint.cc designates 2a0a:51c0:0:12e:520::1 as permitted sender) smtp.mailfrom=sebastian@breakpoint.cc
Received: from Chamillionaire.breakpoint.cc (Chamillionaire.breakpoint.cc. [2a0a:51c0:0:12e:520::1])
        by mx.google.com with ESMTPS id m5si11754297wrn.960.2022.02.03.11.46.49
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Feb 2022 11:46:49 -0800 (PST)
Received-SPF: pass (google.com: domain of sebastian@breakpoint.cc designates 2a0a:51c0:0:12e:520::1 as permitted sender) client-ip=2a0a:51c0:0:12e:520::1;
Received: from bigeasy by Chamillionaire.breakpoint.cc with local (Exim 4.92)
	(envelope-from <sebastian@breakpoint.cc>)
	id 1nFi44-00037A-6I; Thu, 03 Feb 2022 20:46:44 +0100
Date: Thu, 3 Feb 2022 20:46:44 +0100
From: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
To: Bart Van Assche <bvanassche@acm.org>
Cc: linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [usb-storage] Re: [PATCH 1/2] scsi: Add scsi_done_direct() for
 immediate completion.
Message-ID: <YfwxJPUFCo5/55yI@flow>
References: <20220201210954.570896-1-sebastian@breakpoint.cc>
 <20220201210954.570896-2-sebastian@breakpoint.cc>
 <c8402f76-7397-77c3-232c-c825c52ea826@acm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <c8402f76-7397-77c3-232c-c825c52ea826@acm.org>
X-Original-Sender: sebastian@breakpoint.cc
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of sebastian@breakpoint.cc designates 2a0a:51c0:0:12e:520::1 as
 permitted sender) smtp.mailfrom=sebastian@breakpoint.cc
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

On 2022-02-02 12:49:16 [-0800], Bart Van Assche wrote:
> On 2/1/22 13:09, Sebastian Andrzej Siewior wrote:
> > -void scsi_done(struct scsi_cmnd *cmd)
> > +static bool scsi_done_need_blk_compl(struct scsi_cmnd *cmd)
> 
> I'm not happy about the name of this function. The word "need" in the
> function name suggests that this function does not modify any state.
> However, the body of the function shows that it may complete a SCSI command.
> How about renaming the existing scsi_done() function into
> scsi_done_internal() or so and adding a "bool complete_directly" argument to
> that function?

Let me see what I can do.

> BTW, I only received patch 1/2 but not patch 2/2. Please Cc the linux-scsi
> mailing list for the entire patch series when reposting the patch series.

I did and based on lore's archive it made it to the list:
	https://lore.kernel.org/linux-scsi/20220201210954.570896-1-sebastian@breakpoint.cc/

> Thanks,
> 
> Bart.

Sebastian

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YfwxJPUFCo5/55yI%40flow.
