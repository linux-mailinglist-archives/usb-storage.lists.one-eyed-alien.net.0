Return-Path: <usb-storage+bncBDUNBGN3R4KRBWF3X2YAMGQEJ7YTVRA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lf1-x148.google.com (mail-lf1-x148.google.com [IPv6:2a00:1450:4864:20::148])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B74F8995B4
	for <lists+usb-storage@lfdr.de>; Fri,  5 Apr 2024 08:44:42 +0200 (CEST)
Received: by mail-lf1-x148.google.com with SMTP id 2adb3069b0e04-513e7ff16a8sf1550924e87.1
        for <lists+usb-storage@lfdr.de>; Thu, 04 Apr 2024 23:44:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712299481; cv=pass;
        d=google.com; s=arc-20160816;
        b=iUKz0MJlsTfHJx8Yf7mw3q844rmazy9JNSNNb+rLtp7dMK9a4tZ/SkUkpkpmB1qfv7
         PqmEzZvWiEMNQnIAmTCDuOfdJWUuh+7dRKMzdQaGc7B0QmXJ0K5/0nQ8fl/Mp1gVu8cG
         RtLGuztyzExRkKjZEZvyDBqbJ1btb3Oy5vLxk/V3Pu6KDEYx8PiHlCLs8josZqahFS+j
         Y0/Om/BerCA2AUTVaEpi0eTO5rURpp/xwzJ1WYcRr/K/3+B2/HVyJqhkkljOKtIkhgyj
         qTxP/p8nbYdE18V3EK3IYEjndKP8Yo8oLJV6B5ygVX6iGm+nlM4RuDBLs7LwWf8DWTDZ
         ZHbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=LGyk3JjWS8Y2pVfGaVev0y/ww67qSB8xPAZWt+efcOY=;
        fh=dgNk5L5yA4FofWzYNO4w7gUp0ydHagAetWiZTybLgYQ=;
        b=EjvbY3iavWh/1pLIN1b/jSRI3QNo98VaEAll//ZFloCQhn/Du8UXTd1P7G1zpGxnC5
         bSZavC71SrUCtVrRU7/5b59lWpQTAkJ/T1fYpXRMPMLXKC/l10g6+Lwlv3slz6V24ssd
         Mlput20dEWVDl5/eW6z6ISvk6BUCGB1S+8cyHo4nLz1EdeWEoNbCovaZlw7Wl/z9aFHn
         akW8MuhdpH1VvfXQyLNirtTYAPTafaBQHz0m4dOw9uyVWJ/Sbt32ghpSfciCwBLg3oK/
         Gmu+LDQQaadDntcPtXQs2j+7C21pEPUqfLHAjhtloRKMtkCAXdiYlA5Bdh5fyltU2R6h
         MRLg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712299481; x=1712904281; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LGyk3JjWS8Y2pVfGaVev0y/ww67qSB8xPAZWt+efcOY=;
        b=NpgyFtkUkmHgyGmfxTgZcYclS/3C+pbmO9cOMF+rz44dF/oMSohPnrYx4621BA10SW
         Vvsyi4Yvv8LG83VQUpxL7xjY7hkaZf0jH7QWqkaQ16rKo/cRtnWSEO/53w4vsitSBAX4
         8AXumh6pM/+gO4GzpnefQiwqffV9vvmQfNfPU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712299481; x=1712904281;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LGyk3JjWS8Y2pVfGaVev0y/ww67qSB8xPAZWt+efcOY=;
        b=DDQja7jjhV/FbJ/hpCgzckLso72ij90tcQJQ+EoNnY9fqQl95OKXyR74WB7UtG2FUd
         uXaBeiMLsZwBNZ+FqjZ352rokQfnJxWmASMGzEKy9z3dZje0r/biCpiLWq5X7MNarbVw
         pU8/Ux+hnaINyCVenzoP8aeT6dcmj6HgnguYKIh+i3KOsV4ABZaCXqyu+egxfGbL/ggy
         t9slz6C9Sv9j3qaSpbe1UYjmo/oJp2/vOacoFk4BCTE1VI3j+BG1m9OXezfptd8dGO/S
         xGmUQjjyZ2asWwopp1rV2bl9XMRFvUsIfuzPRHR4HhofyF0yYsbcbdij+5/pflICBzpA
         1YLg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUHivizcA8bDT70tkHyPTpiza5p2OQBjGbT4GLd+fNwa6l30DL2dGhNueSvl+4zXHksQg05F7hDbaJU67vyIrlOaF0IkrA/2k/h
X-Gm-Message-State: AOJu0YwXEbiEu043AVdZsSSSnHmExFgb2dGnrd4rhooqo1zEp3RN9+N1
	hYzli2iRQySuQXl6z3LrUixu7U72vZ9SXMtU4z0y3sPZiVjC2xhJRzRfXCi+OCc=
X-Google-Smtp-Source: AGHT+IGeZHPfgJOVGjYj3PrHvJvQnaaid8W7uAycNdRL2pHvYOzcErJsN72hGl4XFHjeCt6GtZ8MKg==
X-Received: by 2002:ac2:4d92:0:b0:516:b148:6d6 with SMTP id g18-20020ac24d92000000b00516b14806d6mr331416lfe.50.1712299481241;
        Thu, 04 Apr 2024 23:44:41 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a19:3855:0:b0:516:a081:b752 with SMTP id d21-20020a193855000000b00516a081b752ls957054lfj.0.-pod-prod-02-eu;
 Thu, 04 Apr 2024 23:44:39 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUBJwDe1mEr6rLbBUj3aNSIjOuWGHCJx4rlxH3iONwTc28flTHiy21v4xtWFT6C3eLYIqI2/08agqmFMKELLmuIrQVeO3HbrRA4HfGAUuUM8wgjTQU=
X-Received: by 2002:ac2:4301:0:b0:516:cd76:ee11 with SMTP id l1-20020ac24301000000b00516cd76ee11mr361420lfh.17.1712299478132;
        Thu, 04 Apr 2024 23:44:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712299478; cv=none;
        d=google.com; s=arc-20160816;
        b=jHdvGjeXYQhfyIterKmxG8OV5TSfR/BUX7a6YlWvErTJwUZq9PbQ57YH2zEsr64a/M
         iUFDDKvpvYJLfXomC6ueXxandKx45r3+0b6UCZf2NfefdH5f4PP+v3PI2i8RpNqSompr
         sGONz24HEVVUg3IQ/uVMBjKtxjZ0utFG95H5cd8EceE7fN/CXpqyEa+6N1sX7Vc5e+mV
         IDzZqKpfFbhT0Jlu/+Xd23patHirL8i+iKOdiouHyDkyGihhKzPLdpaM3ATzp3Y8dx+A
         g1/RPbWm7oUYsuhvhwHTxL62HQUZU0GKjxnj0/v7EiTzvUHKSWs3kPwgJrjb8Rebevrh
         pv5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=eWQSIW9bWQtOpMHITpczPoUR6XJJ+Ve4cIQU+yeNTls=;
        fh=N/hSvZDtWp/5if+vLDcwIHcouuv8nbJWdmrLFoo7C7U=;
        b=XGVoiAJYx/gatqj19nlEFpzALZxjxHSIhJ6PAHBOyDX2UUnWiWHgUqpeuhWY4AaFo7
         eBX4MAjPfVPz9z/R0X9rpvP8Y3N24F/rYJO2Xi0AsoWh24PLCchqZ7cDn9tQOfRl3WhN
         F6VO2HYR8655SwW0z2UPyY4H9jb+Z+W5LqWJwNc3SWainwtCXhnw0NRrmQ1IHsss+rUk
         cgb58/AKH1YS6ayHGVzcqLFvaMgZoH7h5lhhoSYtw8qOW3JQeNp8jAp74X6V8Z1dNZWI
         u+DMti8H8lL8GzKAukK7YsHAGtFoPsJo/f8WOa4Y26iyBybT36UGAHWNbNU9J8EwEreE
         gKuA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id m28-20020a05600c3b1c00b004147751c5ddsi606928wms.108.2024.04.04.23.44.38
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Apr 2024 23:44:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 31C4A68D07; Fri,  5 Apr 2024 08:44:36 +0200 (CEST)
Date: Fri, 5 Apr 2024 08:44:36 +0200
From: Christoph Hellwig <hch@lst.de>
To: Bart Van Assche <bvanassche@acm.org>
Cc: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>,
	Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Takashi Sakamoto <o-takashi@sakamocchi.jp>,
	Sathya Prakash <sathya.prakash@broadcom.com>,
	Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
	Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Xiang Chen <chenxiang66@hisilicon.com>,
	HighPoint Linux Team <linux@highpoint-tech.com>,
	Tyrel Datwyler <tyreld@linux.ibm.com>,
	Brian King <brking@us.ibm.com>, Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	John Garry <john.g.garry@oracle.com>,
	Jason Yan <yanaijie@huawei.com>,
	Kashyap Desai <kashyap.desai@broadcom.com>,
	Sumit Saxena <sumit.saxena@broadcom.com>,
	Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
	Chandrakanth patil <chandrakanth.patil@broadcom.com>,
	Jack Wang <jinpu.wang@cloud.ionos.com>,
	Nilesh Javali <njavali@marvell.com>,
	GR-QLogic-Storage-Upstream@marvell.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
	linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
	MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
	megaraidlinux.pdl@broadcom.com, mpi3mr-linuxdrv.pdl@broadcom.com,
	linux-samsung-soc@vger.kernel.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 12/23] mpt3sas: switch to using ->device_configure
Message-ID: <20240405064436.GF3480@lst.de>
References: <20240402130645.653507-1-hch@lst.de> <20240402130645.653507-13-hch@lst.de> <031d6f0c-7d94-4adc-b194-929dbfe80c6b@suse.de> <9aa90db8-fcc4-414f-a4e3-ee33ff78fb2d@acm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <9aa90db8-fcc4-414f-a4e3-ee33ff78fb2d@acm.org>
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

On Thu, Apr 04, 2024 at 10:17:15AM -0700, Bart Van Assche wrote:
> Another possibility is to remove all code from drivers that sets
> QUEUE_FLAG_NOMERGES.

That is probably the right thing to do.  Not for this series, though :)

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240405064436.GF3480%40lst.de.
