Return-Path: <usb-storage+bncBD3JNNMDTMEBB3GDQ6YAMGQEABPVL2I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id C358D88B1CC
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 21:43:26 +0100 (CET)
Received: by mail-pf1-x448.google.com with SMTP id d2e1a72fcca58-6eab623fdadsf493952b3a.1
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 13:43:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711399405; cv=pass;
        d=google.com; s=arc-20160816;
        b=aDEa2CPPwpLNQhHX1CdtR4jCzr1Z0ZZAWIE0/Ma2qUO77eANDhoRqM/AStapVN88wS
         Iox51uQ4r4hNd6PbB6yRooEv7h7BSSRW7VDMQitksXfw+ZQej7N8pKulJgrdJd+7n6aV
         VDCfQlGx/TmIri3STHSZ63/y7TY4H6pSoI3oxws5+ag+LNFUFzH7ixmoxskCzC/0E8kT
         Sylo9lw4Mnz2sCwU6yOmRX0YaSwCju31fa1lFCFRt2WMtYP2YpNXqrxC7Z9A+WCw0z/J
         qZxX0014zMvZlvDaUpI62s5GCRinSjoVcYdyecdZM67e+hMLEFd9cHxTU7KPyLpsmxcA
         5GXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=F2pQ78SeV4IJF3OEWnHMOvyIDeHIPmipcoKholFraKM=;
        fh=fHu5ZDyPJYhZwSZSs99uYk+Ln/l5KBpG6b5MkIWMTpI=;
        b=a080hwHzhx7ul0RtPVDepRfMR3eEuzhtduZcJDDJadfkUdGFjsXUUWGgQBUncmNOTl
         0J8+u+FUTszfaLP04Ucn0MsJrkHPCd2mKXP5lTesPR5jLwXOkYS+H1CAaQolyjudbRPl
         5aXEJwqb5nE5ChJXEcg4ZpKp3mAq11Z27iz/eFvEZSzqt+pWMdSk2tqxT63sjM+ZNN0a
         XhSlnjOI0bqG83EsI5lLX1RxoMLMIjAua2JgKAwQQwHbyEFTE959fflYtycglnz9U3W7
         QWefnfSbBjQRY0nc6Yd/3ZpX7cTvIdiCsFtlLIYkLrTFnoJhr/US+0GpVVUzQ30dVHtk
         DUDQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@acm.org header.s=mr01 header.b=o60GYQbr;
       spf=pass (google.com: domain of bvanassche@acm.org designates 199.89.1.11 as permitted sender) smtp.mailfrom=bvanassche@acm.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=acm.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711399405; x=1712004205; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=F2pQ78SeV4IJF3OEWnHMOvyIDeHIPmipcoKholFraKM=;
        b=O819kY5HvJ89V9SKzf1s5RmsA4W/l3IQd63RiqXzTl9vnh+Au6OIw4nM524UPXZpgJ
         dd+3Y7JhdGneqQFjgGx+XMqTciIbjEZ9ri62bCHyO2f0eg2aMMgB4A1L7+rgU03Tje2t
         JJ0HLVWhjWMul1JIoGxHtnveoqcwlmKS7X1iw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711399405; x=1712004205;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F2pQ78SeV4IJF3OEWnHMOvyIDeHIPmipcoKholFraKM=;
        b=NDq/m9yL7UqKPi5FvJxGa1YZsAUOhNnVrJu185QZxuxLCHGel6G30EvPX23Hdl0y3Z
         cSxk1VTEfOtkVpf7f0DS4ReUg21pQpemuG/02OUzsVSic6+IqwrvnE3uqk0apVmTycnG
         QJbm6kh7vlDmFKrTH18uwrkvyagTGgqNfKdxRL7s23gkXKlv767S6RTUuwKAVnC/bI+S
         nz0IqploGKrHh/Vj5Hk9O51kqH8yi/Fs+XLCVZWA4W2Ye/bd3aqclpP3hKNmRvzN47qx
         h2ymORj1/XvCthOx19Y8s+Z+DTyrm4uq0TZKZJSIbOORgQHi2r2O7eUWeyJow21H3nib
         pV9g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWbj/IxHvG1atj8bmremL8yJ/QpVN8t5QKU2dtCNrXQ4YezSZJPBI/2aUcawv9v+ikhWFYiQkkWmvlwRzAYRhPBViLrvePLyTfJ
X-Gm-Message-State: AOJu0YwC6SsWPF3MM6xY05givipGHmNUDKMU0M/ZSRhodChQyTZ5V7Qh
	v0xvOq6WCGVgKB8vBqPkB/AW9YOB8UvwdYRpUnpW9EUZPb/+hmHiXolcqIMmRwA=
X-Google-Smtp-Source: AGHT+IG12rgK+t8xJm24xojgIBdAFKHbMML3NDJcPLUMPAfXHUFVjpQIhECylAiBHPmrqJIT8v69Zg==
X-Received: by 2002:a05:6a00:2349:b0:6ea:8793:6d9e with SMTP id j9-20020a056a00234900b006ea87936d9emr8627682pfj.8.1711399405136;
        Mon, 25 Mar 2024 13:43:25 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:3993:b0:6e7:dfd0:f5fa with SMTP id
 fi19-20020a056a00399300b006e7dfd0f5fals3068500pfb.0.-pod-prod-07-us; Mon, 25
 Mar 2024 13:43:24 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXe2s3aFcK50kbzfUBJIGKnFCzgcPgNX6uk1r9vfxVQDQ7zURieWHyx534d+TeAY1cYe7TxWKAFj+XWXAYfEdfvkMOAP9vK1sRS2a9GHSdW75bXYTQ=
X-Received: by 2002:a05:6a00:938d:b0:6e5:ea19:bbcb with SMTP id ka13-20020a056a00938d00b006e5ea19bbcbmr9275513pfb.5.1711399403792;
        Mon, 25 Mar 2024 13:43:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711399403; cv=none;
        d=google.com; s=arc-20160816;
        b=MDBG6B5B4Tdhq3iG6DOQ3CP4BtLARjwCd+HUkSQvSG1OHTtDdjPm8lo9tWMkIeHJfJ
         rVyfmeW9+ynjD0oyEs5iHXja72BfX2HpOmxJ2XKBePOJx1kvxDBo0ex4uvYi4RZj/64B
         vEzh7GG2CsVRN8stuiTnBCYrX5MgVNOp826Nf92oliyNA1/kic48RX6ca+UGyCWk4JQC
         t9/nWXDch0vD6EnpUXMbGCzB1Qx23y4icnJIhH+VOwC0lRk2iXJnApb0u5aFg/PmhBid
         Cg8IFGUntI40aLi9LNMNsXEOC9R83T3zgcHtTCi4xLewaPyf0u+J9wPavHvxefqi2XRX
         IR0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=xo7k7hDsTyfLL74N8EfEIPZVnqI9jotrbYjW/qdNPR0=;
        fh=ZF8T/hrxrX+7Ws2prm5mPVJd75XGm8RH7SBtPTVK71Q=;
        b=vrJuJclaaOb3Fe9fpCVAuO2mOOP28QQ5e//1CtFUzKGpueyvxzE6XjOtX/N2mR95ij
         vOEI2SbfWtIUYM2iY0+QNPxfF+SEetULdn/tIzKZm7351PXqliIWrfJsEHpoELqxU47K
         nIS6HK6gPL1SB1esSIhDqNrgloPofFf1eGkgpS010wwvcTvzzty9kmikraGyEnyTlkhD
         GO2HIvsjjupEZ9gnhdsG5DwUr7s8YJQUWxve57oFA1HvxMVF2I6aFXcEE742Fm4nkCQr
         9e3FwsKHjB0DD+j3jrJx/RZZtFstYOqLVavLDDUolsW1J5qZKDC8w8pC5HwLNE+a/cxI
         QysQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@acm.org header.s=mr01 header.b=o60GYQbr;
       spf=pass (google.com: domain of bvanassche@acm.org designates 199.89.1.11 as permitted sender) smtp.mailfrom=bvanassche@acm.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=acm.org
Received: from 008.lax.mailroute.net (008.lax.mailroute.net. [199.89.1.11])
        by mx.google.com with ESMTPS id gx5-20020a056a001e0500b006e72d056ae5si5669948pfb.276.2024.03.25.13.43.23
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 13:43:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of bvanassche@acm.org designates 199.89.1.11 as permitted sender) client-ip=199.89.1.11;
Received: from localhost (localhost [127.0.0.1])
	by 008.lax.mailroute.net (Postfix) with ESMTP id 4V3Pyz27FSz6Cnk9M;
	Mon, 25 Mar 2024 20:43:23 +0000 (UTC)
X-Virus-Scanned: by MailRoute
Received: from 008.lax.mailroute.net ([127.0.0.1])
 by localhost (008.lax [127.0.0.1]) (mroute_mailscanner, port 10029) with LMTP
 id RyVx3gHqWiUV; Mon, 25 Mar 2024 20:43:13 +0000 (UTC)
Received: from [100.96.154.173] (unknown [104.132.1.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bvanassche@acm.org)
	by 008.lax.mailroute.net (Postfix) with ESMTPSA id 4V3PyZ5tBkz6Cnk9J;
	Mon, 25 Mar 2024 20:43:02 +0000 (UTC)
Message-ID: <d64f697b-7349-4592-814a-00124afb6737@acm.org>
Date: Mon, 25 Mar 2024 13:43:00 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 23/23] block: remove now unused queue limits helpers
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
 Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 Sathya Prakash <sathya.prakash@broadcom.com>,
 Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
 Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
 "Juergen E. Fischer" <fischer@norbit.de>,
 Xiang Chen <chenxiang66@hisilicon.com>,
 HighPoint Linux Team <linux@highpoint-tech.com>,
 Tyrel Datwyler <tyreld@linux.ibm.com>, Brian King <brking@us.ibm.com>,
 Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
 Mike Christie <michael.christie@oracle.com>,
 John Garry <john.g.garry@oracle.com>, Jason Yan <yanaijie@huawei.com>,
 Kashyap Desai <kashyap.desai@broadcom.com>,
 Sumit Saxena <sumit.saxena@broadcom.com>,
 Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
 Chandrakanth patil <chandrakanth.patil@broadcom.com>,
 Jack Wang <jinpu.wang@cloud.ionos.com>, Nilesh Javali <njavali@marvell.com>,
 GR-QLogic-Storage-Upstream@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
 linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, megaraidlinux.pdl@broadcom.com,
 mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20240324235448.2039074-1-hch@lst.de>
 <20240324235448.2039074-24-hch@lst.de>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20240324235448.2039074-24-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@acm.org header.s=mr01 header.b=o60GYQbr;       spf=pass
 (google.com: domain of bvanassche@acm.org designates 199.89.1.11 as permitted
 sender) smtp.mailfrom=bvanassche@acm.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=acm.org
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

On 3/24/24 16:54, Christoph Hellwig wrote:
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Bart Van Assche <bvanassche@acm.org>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/d64f697b-7349-4592-814a-00124afb6737%40acm.org.
