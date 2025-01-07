Return-Path: <usb-storage+bncBDUNBGN3R4KRBUOK6O5QMGQET56Q2UY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ej1-x648.google.com (mail-ej1-x648.google.com [IPv6:2a00:1450:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D47A039C3
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 09:26:58 +0100 (CET)
Received: by mail-ej1-x648.google.com with SMTP id a640c23a62f3a-aaf921b8a85sf475452066b.0
        for <lists+usb-storage@lfdr.de>; Tue, 07 Jan 2025 00:26:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736238418; cv=pass;
        d=google.com; s=arc-20240605;
        b=V4WTaife88TQoL7iZzyCCMk+hZBEfXOvf7iR5LXrnlnToH0ZIlSMYlryRtpyks4Acj
         A98ZjRcHLIfHG00YNHFz2QIQ0cH2lW42lgP3b+GS4EkA7VZIIqOgRn81V3deGlvFP0oR
         Vuc6v4yEenhHRyGa6o4x0Fd1P1xMnMvLCOoaNkyoM9cV68zmPsdSHpEmY0cZQdLSohki
         CH3WJsxki2QxeCmI85m4CN4RnRNBT4zd65zIstTSooL48iZcKFjfR8JUxyhif0ElPm7+
         l8thtYhl2cMu0TAn1yctX5R/+9XDdIKXVVXBk0wfJoKXGQQEToSXnAcPa3SDMbKMFolt
         h4RQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=PKlUMYu8XeJxidDaBgwL6i4GIyDpnQCRXNd3U8hHLvY=;
        fh=ccg6cOJnfr1nD6PX6UutjagKrJwABYI8qeXLd52wf3M=;
        b=VT6eS9aPuEsbvqKyDqFI40nlTbqWl4+GaqckxU28/yX0wQTw9O5luo8EzLrLtLSGzB
         ofL1A/y+kG1NIVojWFjE3na4w9GMMqa8dohVTrSaoja/JecO+5vJwVq89pCcMioRlzY7
         ggG1OumNQZs5gEdEQp0lXM+0xJ9CnnUMWkiVnzarQL3P0nVB7iETVvjBlSAfWvOJ1pO+
         8A2RVxe74oHbmUKZpxVymO7eUWo0vTGfbi01//C5vXTfc3Y0C6PdGaddxbBm5R3P5fQN
         NBaS1SR3l74zdkqcr/2rRXUM0NSCca5AIkozxpJovHMvAsE6Cxx4Dvv3xE313pzCZhTV
         EZoA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736238418; x=1736843218; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PKlUMYu8XeJxidDaBgwL6i4GIyDpnQCRXNd3U8hHLvY=;
        b=gHjN73fkbaTuGKRpygOFXKGX5GS6VQHVbiYGaF9uxZ032xxSinuU5FRPJmFWktaQx9
         LYtWYcLIZq/jbqsNyslfaEzRlZfnKs/ZvxrLPsAIVnNbM2Cdjo6Bruq1rsZ1ZCfAFqm6
         Rfl5NR1WtABPM9S0vPEclqg8N+5XmW4lcXy+4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736238418; x=1736843218;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PKlUMYu8XeJxidDaBgwL6i4GIyDpnQCRXNd3U8hHLvY=;
        b=gDsWepLXz43RCDh4oTrzLv4Id7bfsvmJheonKmTRwvjHhAuKcMAV1iscYL/7JM9wZi
         gzr78kqc1U2sPj1/t4/FgFml9SMUVpP+f3vPOqNRhhj27wsPrPEwDHFNLcgDFmpOdwiB
         TiCTWmunQwhS2MLcASGczo7Wwolz3XTWD4fjy3rVX8r1BUgAQg2sTzEl2UKWYaXWLJKr
         oF21wYQwgY5BYljGABW2pTFZsrYF6BVcIAnNZ9q+5O4+cN4Ui/XphdqA4MR45jUL0DIj
         zUQGRg90sfjmRN8lOBDDDRbrnjQmHH9TRUqVtlcTFaUBjQoWRCdEO8/QHzbTQVRiXztD
         u/xw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVhFn87ilunf9jPNKeMxFjxHRL3bPCGJ26jZNvZE15c/SjAZbfR/VyAismAs0nOif3qu2ihOQ==@lfdr.de
X-Gm-Message-State: AOJu0YwZ6Fbq28CQ5riqwBv4zmdTkhTrRGJBsbFVQjlkQdXTva2i+6S4
	Cjms12Gq22Ph9NguWHTeWbLmrQRsWZxNWvgfhajWmHZENo9XsRfQhcNHZ5bWuU8=
X-Google-Smtp-Source: AGHT+IGLHu5QXYj9ybNMJMyBiGQKIBGLV4bpLn7ccwhkzn79EvQ/amhWco5tkscBI+DiBJRTMruxMg==
X-Received: by 2002:a17:907:9711:b0:aa6:7c8e:8085 with SMTP id a640c23a62f3a-aac2adc608cmr5686307866b.15.1736238417925;
        Tue, 07 Jan 2025 00:26:57 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a50:ba81:0:b0:5d3:cfc7:9eef with SMTP id 4fb4d7f45d1cf-5d928209f7dls414536a12.1.-pod-prod-08-eu;
 Tue, 07 Jan 2025 00:26:56 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXIc2Wb4GwFSGKPC8KhB4inIDBedEGomUzc0GD2QMIacxP2/6vod2T0tfQ04m/k50R7tEzE1VsSc9k7Rw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6402:5211:b0:5d1:2440:9ad3 with SMTP id 4fb4d7f45d1cf-5d81de5d42fmr61275799a12.30.1736238415654;
        Tue, 07 Jan 2025 00:26:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736238415; cv=none;
        d=google.com; s=arc-20240605;
        b=SPJixgc8tA6K9jFELQtjedprLM2SiNn3Ck8xMwPakQUIILX0i91D2xXbgwBTpz+v1u
         2q88LjV04BuAMIrGHW6bKdboClPRZrK0VRMFaZGkh258Cwh0us3VSWC4bRhlH0RFeZlm
         OIqHYHuynzsa5t1fQB9JPE9fB1zz4RhuGNMGlwJPfWJstq4/59O/L4CXDDCZU1DQq3Dt
         o82Jxou5JkDMQo6c8FAC/xcDMoB8N7DU8hrPrWqxt8+mulgk3gWpfT2HCrXsc68lDUI4
         t7vtIsYTEH+C3UIDPujNmptUqK1ruCq4CZUwBcIjwvtRzGXLi/pg6pM1NsAlHM4ZZzVQ
         aWiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=TLS4jY/JGx7AKLrY6t16YpBsqZunXPhItZk9CAinwyM=;
        fh=8kT8ycEQ/mYE2mKCxwlZifUl2783WICih1RciiWppj8=;
        b=PL9FKcgcTw1Z3KWJEO6StGRSMgzwp4w+M7tKQhd0mo4XAPZiF3jL+nRmZr6/b3En2Q
         KXm8zg7WZcd9srjB9h9rIwlyc4/P3QijCnrs7YdBJ94jIbGXZZazC2B5W4xkIc9ra+1g
         4XAbLrhXsEOzIdY3+bmGcpLQBiVHo0doQv3BDBWCDrk7jfA8Eao05ERO5CAB3U6AEqNK
         ApE0mZ+5qtna0k91vVPMQcsVfUE+tpjjaz8ycd8XQH2KJC0smaqcRkfkgnvQGokAp3fJ
         wN3PsB7oFmO2LRyfe5cR63k2fd8WaAfD4aHfP5vtJynYsawNvGkGVPaZT4HGIM4G3M0E
         Igww==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id 4fb4d7f45d1cf-5d806754ec6si22992886a12.39.2025.01.07.00.26.55
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2025 00:26:55 -0800 (PST)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 4C69B68AFE; Tue,  7 Jan 2025 09:26:52 +0100 (CET)
Date: Tue, 7 Jan 2025 09:26:51 +0100
From: Christoph Hellwig <hch@lst.de>
To: Nilay Shroff <nilay@linux.ibm.com>
Cc: Ming Lei <ming.lei@redhat.com>, Christoph Hellwig <hch@lst.de>,
	Jens Axboe <axboe@kernel.dk>, Damien Le Moal <dlemoal@kernel.org>,
	linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
	nbd@other.debian.org, linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 4/8] block: add a store_limit operations for
 sysfs entries
Message-ID: <20250107082651.GA16196@lst.de>
References: <20250107063120.1011593-1-hch@lst.de> <20250107063120.1011593-5-hch@lst.de> <Z3zXANbFk6GBZg_z@fedora> <ae6b7727-64d6-4d9e-9bf5-951e38d8a768@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <ae6b7727-64d6-4d9e-9bf5-951e38d8a768@linux.ibm.com>
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

Hi Nilay,

this is a friendly reminder to reply without quoting the entire mail.
I did not find any content after scrolling half a dozen page of
full quote and gave up.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250107082651.GA16196%40lst.de.
