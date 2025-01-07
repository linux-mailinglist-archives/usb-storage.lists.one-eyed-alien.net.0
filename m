Return-Path: <usb-storage+bncBDUNBGN3R4KRBN6Z6O5QMGQE44J6E6A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id D23A9A03A60
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 09:58:32 +0100 (CET)
Received: by mail-ed1-x545.google.com with SMTP id 4fb4d7f45d1cf-5d88d37abd0sf8159737a12.0
        for <lists+usb-storage@lfdr.de>; Tue, 07 Jan 2025 00:58:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736240312; cv=pass;
        d=google.com; s=arc-20240605;
        b=GuhR+jUc2EXTqVcslP5zNYzCnMF9vZMbj/pr312io1c5imtYn+NR5KZ8q1/akSaICu
         3dHFKStpHSe201PmV7jmLH0bmlETS0Abdzv3AAkLAvc0Z7Zd2ri1bhF7TI/ZnX7wFED6
         4mdcHqixSYoG8L9IQMf0TumV+/P1s46vZrXS3lWLnXU+Bn7OEULHHActLiraurM0jL/H
         5WBkP+3bPIQkDzmigQnlsXgiZPOmnXdk+PmOg91HRBkDE2q+5wjVkU4nRTB9CjROajZ/
         bx63q87lMWuAR67XcvSpB6RzObtRVOEj0VJSX/y875q/747Y3rxUVvJoQVQZ8xsDs4nk
         v/3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=uu0xNkPs4CcSG/t2wjaZCrTGEVt8u5AmjXnSx8X87sE=;
        fh=DeUDW3td23qqGqa6Hgp+2qravR0S0PsL3S7pM+FVKbU=;
        b=eBX3HVGL0P0pIr7R6uSSM1i1A7L37gm4aTgd3PtzO1wATMTFgmZPp5S8ZbIR7/pAn4
         Ap0+uPjQZxVP18Xd4iQmGUyoB6EwiyfynHnjthkGxtBleykR4Ik+XWQQyl84YMqpg3iR
         ofm7sf6hbhGo7cc8+ockMRiGrmKF+SBoc+CL6SkepyhPl5PpmATFS+0NrQcscPvAS3gs
         lKflKX7cqX/ImVrPzZDyejdPN1Li6Nk4XO5OobtGwBSsNDx5qPMXefpJzkH7wAGA76+Q
         ruQn8cvAaSieRQrmF6Eb6eK07FZr1H88tbhibfu1WLP4jLYI4g/mZA4kjUQukwuPauXf
         CFuw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736240312; x=1736845112; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uu0xNkPs4CcSG/t2wjaZCrTGEVt8u5AmjXnSx8X87sE=;
        b=gzoB4J8GiXDyJNDShQw9UlHliiD54esromm0/GDJ26SHlkr5pZ1bspP6PfitBcV9CV
         0laYVgo23ab9r0HdPug4qddPuumi5P6glT0zKKVVRX6iRU9s3yYb98FyeSGMWrzb1FlQ
         OfzR7jwuSdmyOOqKMM6v4dOKQvsfQLK+1fbvA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736240312; x=1736845112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uu0xNkPs4CcSG/t2wjaZCrTGEVt8u5AmjXnSx8X87sE=;
        b=BUcDlMbIIUwrsXfMGxclJh76KKHxz4oPOFnamjvG3Q2XMveCoMeh+JXQKWd6piiHGJ
         EgmIiZ/89s8wfEQY1Ynux7oAReFvn9fTi7uO6t4LmbLXYylyA4mLRHF5GCFOPlyjL/p5
         qJFuB018bUmm84E2vj+2d59SfgNenY63MNkdxSKPa1pkQuz/WwLFYRKg5l/mcyxXcr33
         NXu3DZrLOBWq40kY0SkzG1+AOPuIFLxJavSxIRxRsQQq6AvdF1j5RTQP4dfn5XOiv78d
         QVobpvUeyquEdhccoSzPE8UCurGMVPDa1eQeDDQ333+BArrdL48ZJFQUBKByUFlcZ8ut
         rdOw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUSGjw0ttQVZxGSF1RVVD0cwgVAoQMY+OL+baMxLuT1JjmgM/WpGnZG0XrNIrmf5kmc7P9zUg==@lfdr.de
X-Gm-Message-State: AOJu0Yybj5W7I9H5C7Iw4YhX/aXOOB4Wq+X31ME1t2mE9YFJiejPc8xf
	5MgrH4wTRoO+DC1S3wMDCU77Z8rvYse3F4z16y87AIRaGpdsl/4KEDyJGz+T8hQ=
X-Google-Smtp-Source: AGHT+IG2vStyD4K84HjFiQzbCe2xAdmEjlTtakbl8FF+owjxsI1iv0fWYOXY1IbR4uCHmsqO5CFwhg==
X-Received: by 2002:a05:6402:13ce:b0:5d0:849c:71c3 with SMTP id 4fb4d7f45d1cf-5d81dc726aemr56929267a12.0.1736240312202;
        Tue, 07 Jan 2025 00:58:32 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a50:9358:0:b0:5d9:1cc9:31e9 with SMTP id 4fb4d7f45d1cf-5d91cc93256ls30077a12.2.-pod-prod-02-eu;
 Tue, 07 Jan 2025 00:58:29 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVbeSQsb692GDQyrwIE58HapOhs097PJEHzbh6oXSctaIPT47w/CDM1vx4KJr37DMRiaNDI3nmjFu2nBA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6402:270d:b0:5d0:c684:bae5 with SMTP id 4fb4d7f45d1cf-5d81dd8fe3fmr47480217a12.13.1736240309203;
        Tue, 07 Jan 2025 00:58:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736240309; cv=none;
        d=google.com; s=arc-20240605;
        b=jkc86KX1BdpqV5JrgjZZYHx/8VHNQXzlRm7TAUPQJvrOXCBaGjYKnPla/xALu1aaxE
         PSISNQbQd1l3XE++YTuP9t+9etufOfdutQGCP1ivmO5VKWMJoH/93+jS5ATo6e/mFhNr
         lUH8PfDAAJoo1+2ARN1k3TdK2NB58uGo5K1Z+4snHhEeiCuZJBq3P0HzTAlDfh+QP9F8
         OIJzHeL2ySwXdlRUyby69wiucobldpdlCQoel5LiSUi4g4HiEGqdR1PhLvePJc3QbPhQ
         lIUCmkYccujKF6PqfMC1GPwsm+cCsezq+5BLuiuazG7X82OLb8QH7uV3PLhIeui+TLIe
         GE+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=NXBzlsyXhru+85r8ZbescYZI6qXq2U6YF/g8I4MW+hY=;
        fh=XJ/xA22z07LYCWeoHUPlSDZTqwZKXWlTH+Re0f0x2tM=;
        b=Xw5pl0Q+p9Xr5yuLCZlDWhnRXw6QHAy4eqtDExA6DRvRcX3tpZEpHIk/2PZ13yPHVT
         og3BFTFagdEQJ9RDvlw5M6d3DDI7w9ODBxbmmSOjTmXonJo+RUB0ZZ8D7arNnGWVdgOE
         rIDHvFiAb4mNunlVe65iE+eh05LoVlIQUZRods6Ty8x96zLYWnJdZiBEMSPrmWRkyM3C
         PcnSwn+4q/6kMD8zRVW2eCYH1Tr2kb4/OJychhp9Vt1VP7hqt8WHL/cHsW5K2JmEPSv1
         +PyBMuVYDvg4rAy2Y+uV1Se5Ahlk1dUvgjR5ma2yQhKwFd4d55H2sCyvyq18FQ6ohaR7
         Y3TA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id 4fb4d7f45d1cf-5d806fc788bsi22907219a12.243.2025.01.07.00.58.29
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2025 00:58:29 -0800 (PST)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id E40C968AFE; Tue,  7 Jan 2025 09:58:25 +0100 (CET)
Date: Tue, 7 Jan 2025 09:58:25 +0100
From: Christoph Hellwig <hch@lst.de>
To: Nilay Shroff <nilay@linux.ibm.com>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
	linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
	nbd@other.debian.org, linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 6/8] nvme: fix queue freeze vs limits lock order
Message-ID: <20250107085825.GA16827@lst.de>
References: <20250107063120.1011593-1-hch@lst.de> <20250107063120.1011593-7-hch@lst.de> <96c48ba0-3db5-4504-a456-e57440aa1b56@linux.ibm.com> <20250107082224.GB15960@lst.de> <263963d9-ac40-4f87-b38a-edb4202d294c@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <263963d9-ac40-4f87-b38a-edb4202d294c@linux.ibm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
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

On Tue, Jan 07, 2025 at 02:15:05PM +0530, Nilay Shroff wrote:
> The nvme_set_ctrl_limits() sets certain queue limits which are 
> also used during IO processing. For instance, ->max_segment_size
> is used while submitting bio.

nvme_set_ctrl_limits only sets them in the on-stack queue_limits
structure, which is local to the calling thread.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250107085825.GA16827%40lst.de.
