Return-Path: <usb-storage+bncBDUNBGN3R4KRBH6I6O5QMGQEIPDB3PA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id B5918A039AB
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 09:21:52 +0100 (CET)
Received: by mail-ed1-x548.google.com with SMTP id 4fb4d7f45d1cf-5d3bf75bbf1sf14923817a12.1
        for <lists+usb-storage@lfdr.de>; Tue, 07 Jan 2025 00:21:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736238112; cv=pass;
        d=google.com; s=arc-20240605;
        b=SGaoKyxIl+UgUwkhzDPcBSC6jwDNRHf4Q+dlBCXWagatfEBlOuujza35bv85kWaU7A
         s5YvctM1BK4PlZn0p7RRrDTBotxJSzCsIJKnvOj64SYH2INSGOp+UAB0OEfWFX+q1ebp
         587bQU6/UCBD31oTHEraecCIi5h7Cdi4H4S7AAIQO/HhusyZv0PhRQxSEDLZ4eywS3Wl
         mwdC9l9T1CcP0dBFxiU4hzTv8M0jGQrwsHvAOGOXhFssXqAV02Bn4WgP36LPo+4Fq7E2
         0A32ZAuQHDjXCOkYTx9igZscjxaoU8l7n5bL0b0JllICbi8civR21Ex4d8D12STEBjTM
         rrow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=bKGinXTCfKPDMIa+DN4/0qrG+rTxXTHRE9+p0rLU00U=;
        fh=OCd5LcDgUEhmLP660f+OfcYxItC9VRpDe5fXbc+ztaA=;
        b=BnXA5vo4kYpO6aJuFBS3vAvXkGqrKQim4QFaGo/djmpR6svAwxHiylamOAs9Rloia5
         wJRsQy/LLBVUDjqbnnEakH5C2d5ahI+9b4Iw8fmQzNY+RT21j+EeISYDY89xu58vWPhY
         mkITKiWchMGJoxSzGB6USef+DKJdgeBJ2Et6iFqzI65ETQi3OfwBxmhdo6CNak9H/3W8
         a5FWbzLBRpbe0ZuJwyMjXkfccMJWi50AuDGimodSeX+55v71uIfLaFy8V6Dz3iSx/OPe
         cpifaU3fGAJpdxXTufxivZvtryn62rQ21S+Tlce65AV1Uw6VfttiO7MLejmyWIHWQxu4
         nEsQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736238112; x=1736842912; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bKGinXTCfKPDMIa+DN4/0qrG+rTxXTHRE9+p0rLU00U=;
        b=Q9e7Yn/TGUMenqM/W1r4QNQIWlwt3zapuc/a8WZgP8iGOLKaZ/OBCe0LdfARZMdtJt
         bbCbvE4l/pP6QJI0cHYBsvnRZiAMsj4N0T75tAQIlPY30RZebYq6f+68PLORR4zsJYyQ
         1oOU2RTba8uak74lyxYJlF7nEH9Mi4IXDx4HM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736238112; x=1736842912;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bKGinXTCfKPDMIa+DN4/0qrG+rTxXTHRE9+p0rLU00U=;
        b=HOR6Et+5tFIf8cD7W7Pw2c5a9CePT5bMgjwV53FMJmn0r0tKqbJdp3HNHex1gHOaYB
         namuIB3fLTZ9NvtQpAGXWehSWkX6wFjeYugta7QnlfNCCns99ZYv7JCpEt1MJWXV7LsW
         /dG4ZGd9z9Omtvne8ezwZ5F6uk7s/TOJpiOxCrDMqN/TYaYQNCK44Kk5//cFyNwbkSal
         eHq0NiZGVi1yPiKvmEDIBWtePva7l9QlWK20t6afrBMv9RgozSti7lbkd3uG8WIoDZjj
         NjdGdxo0ss64pTvRoTpbM2G4aSaBK06k1nLNKNTtWL5BFxUWCOeMFvI8EDdezgSD9LIt
         Z2OA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCU8tpd4G2FKFDcOUBJhbcZO8WZ+FvjynHLxu+4ysCkkrxNDC00L9qA1tN8n+pK8yQX2lNDfbg==@lfdr.de
X-Gm-Message-State: AOJu0YyFJOkLYyGAqW5X6XGQ3j08qXQakbWiGg2CGXMd6qgdry/XEzEl
	q7e8vmV6qz84M7b8aLF2PeKi+sE6951CPZH/6fSInv29Kqr3qBUFJTfGZRnn0+w=
X-Google-Smtp-Source: AGHT+IG6u3aoQyKQ1oFrbsxuFlLWrvWozUhAWDPZZEtP1fgwxTy75iistYIDnAah1C+KavUqKMyVkw==
X-Received: by 2002:a05:6402:51cf:b0:5d0:e7a0:154a with SMTP id 4fb4d7f45d1cf-5d95e8cf014mr1753985a12.8.1736238112051;
        Tue, 07 Jan 2025 00:21:52 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a50:c04b:0:b0:5d0:b1e8:b0c3 with SMTP id 4fb4d7f45d1cf-5d8f7b7ba2dls471141a12.0.-pod-prod-00-eu;
 Tue, 07 Jan 2025 00:21:50 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVFL7LYGn9VxunTdm79ECGoAYAX6XhPsaRbZH9Gk7npUu3oP8tsdQzG0LSOzhdwUxqDAiQM0EDBqCbixA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6402:3885:b0:5d0:d208:4cad with SMTP id 4fb4d7f45d1cf-5d95e8c980amr1844363a12.2.1736238109446;
        Tue, 07 Jan 2025 00:21:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736238109; cv=none;
        d=google.com; s=arc-20240605;
        b=XHDxmqcjPhApcLhhP0fxLI2KFvXzAIxYBtOGdtq0MkjvyNAmILlVX4/ZsTag6iPI1L
         UKjkyYVTK9QbPvOdjeo5RVX6M2nJ5wUyQdsRxCWIVZ57bwVcb26M5y488WXjD4nwfINw
         mAJnPKkPgE76yCRGB+csH5HfU0oie1f7ndGm0H5rwubgWFALaaIPsvv7foLEGLq4M/+k
         ZiiPA4Cy0fScfzLKkGVWdaMJ+WppX2U3LAcAXs4Sp4MZfFh6lbSfC0V/ftQtWJvlyqFO
         TCFGl0TnR6aTB74gxRvGx2N+5eWJhSb0C56Xfus0MsqVTbg5qrqF8gYlRDFyUTc7Cs3a
         1dwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=fzgUQaA45GYmAtWF4h8jZBvOVZmJvTCwpVPTndrd7y8=;
        fh=XJ/xA22z07LYCWeoHUPlSDZTqwZKXWlTH+Re0f0x2tM=;
        b=Bc7VT53wf0glzQNbNweeJ0iYG2C2MvSswEJIxOexK3J8Ar/dPJv2mSNu7XyFx+mtAG
         M5vvbPZvFGqVt9jJ4fmvNlENybaDSzcMKjV7SYm1v1mUMfBl+ZDw4omr/2CdCWYtmFrO
         McZEeFMSibFuh5/GqvYEqooWK4wlumyffp5CgfZy26O2pDU5KS/4doIXfILUnPLyRpTR
         ibZx2hrR0w3kCsc9cBMMEzY7wLh+Xh034GL4X3fn/yYA3PjtbIvOqrh8Ccv8MG2Sz20P
         EXDtgAgHh7eCGEQElH9iyMU+10oXIxcWf17kwKBzGXV9I5XwrL8lf++84ut7+o1tC3z8
         kepA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id 4fb4d7f45d1cf-5d806767ba7si22329789a12.144.2025.01.07.00.21.49
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2025 00:21:49 -0800 (PST)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 3418768AFE; Tue,  7 Jan 2025 09:21:46 +0100 (CET)
Date: Tue, 7 Jan 2025 09:21:45 +0100
From: Christoph Hellwig <hch@lst.de>
To: Nilay Shroff <nilay@linux.ibm.com>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
	linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
	nbd@other.debian.org, linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 3/8] block: don't update BLK_FEAT_POLL in __blk_mq_update_nr_hw_queues
Message-ID: <20250107082145.GA15960@lst.de>
References: <20250107063120.1011593-1-hch@lst.de> <20250107063120.1011593-4-hch@lst.de> <220cdd33-527f-405d-90af-2abaace36645@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <220cdd33-527f-405d-90af-2abaace36645@linux.ibm.com>
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

On Tue, Jan 07, 2025 at 12:27:35PM +0530, Nilay Shroff wrote:
> As discussed in another thread with Damien, shouldn't we need to 
> move bdev_can_poll() to header file?

Well, if it was needed I would have done it, otherwise the code wouldn't
compile, would it?

> We also need to use this 
> function while reading sysfs attribute "io-poll", no?  

This now reports polling support when the driver declared it but
later resized the number of queues to have no queues left.  Which I
think is a fine tradeoff if you do that.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250107082145.GA15960%40lst.de.
