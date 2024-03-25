Return-Path: <usb-storage+bncBAABBAX6Q2YAMGQEMK7M3RI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb45.google.com (mail-yb1-xb45.google.com [IPv6:2607:f8b0:4864:20::b45])
	by mail.lfdr.de (Postfix) with ESMTPS id B308C88AD5D
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 19:14:27 +0100 (CET)
Received: by mail-yb1-xb45.google.com with SMTP id 3f1490d57ef6-dcd94cc48a1sf7346396276.3
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 11:14:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711390466; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mt3+vOFdsK77xFQHWOSrwgF3KcAeCV+/y9y8r1GTJKMgIEHoiEVaptZ6fezPoyqGZ3
         8GOeU0e3F4tgyj7Qnisa+DcwGEfJ+RDvsw5fuw1CdtnodK0+ZtQ44dsUKK1wH/xL0Pfs
         9tAXarZKklSwK/EsTQLCr9+uGMA6skQYipwL3BNG8Kh5Q3/hUAjK9WEDCkLGfyAma2MB
         QMZmGjO2gi5LPUm5PLzvQNVYkMEnUt7HLCajzglU2U932kFC8VmMNmko6cV0SriAEwVo
         yNpLr5bDP4iyNq4zpqGtHdVeXh+Ef6JMvY6XS7+4Hy5UPjflniH6ZY/MkpaG1RhYa9Os
         juhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=cIAR4FKXShkR8l5yOtuM2sCmO9TwzgPJrt6gd/L0p/0=;
        fh=a8A/u88S9bXTcZP2nG+X6fgQGi3rQ5EepiZNfGSJX/Q=;
        b=q8sUKs8GqmucpBglsElH11Me+TtSrDZWZmvZafTz/w7iQXzWTzC8+F2caLvW884eue
         RfgvKpZRQ/Ifnf3+Rl0X+uJty9JQUhpBkIHhz77nKcyobCiW3ODLwzvnoKgI0XnwTzmo
         G8y0faJzsYo3SZmjWh9rcJ39l9NkNX8Pdok9Pq7nCnW8LF7plHGXVzYm0adLI7Yf1tDy
         g803rXKcZ6asQXZwsqh9EO7OL7SfiXRxtcAXMuXaLQP0UcrtqTnzBqmlaeidSjV8U3Z0
         uu5w0hDn2JBOsazLa0Ek7m3P4y8XMTicDTGKuf4kRpNC4/D4Sh9lz3XC1QnuQmbFWbhw
         j0Eg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=et16iQGk;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711390466; x=1711995266; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=cIAR4FKXShkR8l5yOtuM2sCmO9TwzgPJrt6gd/L0p/0=;
        b=DjZRmULvvs5d88Swj7p//e/d3Mfmh2RzQAjbofHK53Ue1kVUEd7D8/Zt/gM1Sco1gO
         VW3dftpqr1ldZYW/+C0zPZ8zG898Mop/IjPYpS1Reu456abYx/11FIHfmEAGQTk7JZXW
         Q7o1DvgPVHqv17XTpoazOeg2IiSx2CTAT5t7g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711390466; x=1711995266;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cIAR4FKXShkR8l5yOtuM2sCmO9TwzgPJrt6gd/L0p/0=;
        b=G98DedJ3CyN3ZTOJ/ZZW0Fbv1KeverbQMsFN6inIeHc4lIjA8FvuagXtsmXyMqspxc
         i3LXzO1Q00Kwpij/ZP08OuZRfdG4x7XT/PYMC0Mtz9kel28uTeNMweEMcfQ4K2Dlqpe9
         yJ6vxCGSObZOHOxdmd4D1hsNzZtc5EHM6brIH8NpJPq+xmKLilXblGo0jvG1BxfnYFmB
         YNjCCtbuL7lhLtjUGZoPWL8KIsxuYOpxFvufC8wE37z7F7b5scCbzr3TWJOTxlihVlU5
         lU9oE5CqHzVcz5CQjFdKVztapJ0LOVJ/f3Em/ipTQPH8ienczYU0qfoCvzGSIwhliXuI
         8Ztg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUMdK0t6ugcDpL0yY8tOe14YiIGbm/iSTnTw2LhkEUhfd/trax231Wvaz5L8eWoojSdVsBSuOA8QyEZGZ3JyNbSHlsN0hwBZjKn
X-Gm-Message-State: AOJu0YzROvOR6WObpLmtBqTDngjFpFidtufjHxgGqJ6CwEOE7eAz8SRs
	f+W0V+21xz2odgaNEGmU8OXxKBeP/CSm55S1s9V5gTtKgq2IB5L2NcU5CZxp6PE=
X-Google-Smtp-Source: AGHT+IEULr0+/MluKnI2/3nSPjqCE3WGcdSQLcsUZZvdizB1stWtkHakkpDv4d9tKvv+4jxJs9Ajrw==
X-Received: by 2002:a25:98c7:0:b0:dcb:d8d1:2d59 with SMTP id m7-20020a2598c7000000b00dcbd8d12d59mr6034185ybo.38.1711390466665;
        Mon, 25 Mar 2024 11:14:26 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:c8c5:0:b0:dcb:b370:7d12 with SMTP id y188-20020a25c8c5000000b00dcbb3707d12ls810604ybf.1.-pod-prod-00-us;
 Mon, 25 Mar 2024 11:14:26 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUPCXgDZFfx2nWpYx8kcFuIytaxJKGu1mRc/R4jLkQd3R8s8C8Bf6+unbRkWN8cubER+LNtfE47DEyjLoGs7o9CTfhVZZdg1mtwClPlGtJZjaYokK4=
X-Received: by 2002:a05:6902:1b8d:b0:dc2:2e5c:a21d with SMTP id ei13-20020a0569021b8d00b00dc22e5ca21dmr2576858ybb.6.1711390466150;
        Mon, 25 Mar 2024 11:14:26 -0700 (PDT)
Received: by 2002:a05:690c:dd4:b0:611:9f18:9d1 with SMTP id 00721157ae682-6119f181764ms7b3;
        Mon, 25 Mar 2024 00:30:16 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXSIdcpEGqVKsm9AlBk9/PX4cUsSpRdWxMZtnVgFDhoW4vnK5ukoPcLAf+8ojKmwOMvgyCSev+Avad2xaNho3/Xg+1qawal7BOs7xyW9kRN2cD5FE8=
X-Received: by 2002:a25:df06:0:b0:dcc:1c6c:430d with SMTP id w6-20020a25df06000000b00dcc1c6c430dmr4307961ybg.12.1711351815423;
        Mon, 25 Mar 2024 00:30:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711351815; cv=none;
        d=google.com; s=arc-20160816;
        b=uNAJn3eqRTSEEnGDgRV9v8mULGNyvz0rPzRe8xs/q6G5hjyyat/jp0odceg7l45NBw
         tJLNgWmULARtz84UlXrFB85dAfffGnVVu74DSIR0kbAh/ym/6fU5AMGE83HkhthvUgfS
         b3zbXiq9mAeHm9L9ry4kKZ+Ll121wtpmvvwvKH8kanSGmJZLUQWUTMGS/klm9SgY4pkm
         kA22W4sYLN3KDHO13uPZp8ESkHe2J25HF8CH/CrLSdM+8tGZjVa985vEJbieOW9L7Dcq
         8JhfCqj3c2Efp8BIDLxoO8VOjy9aiIe4GfFMHuGKQi8x4JpZ0APV4RT0RboU0uV/4UFY
         gdhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=Zs4B3fBM1oufB0+xA8cQ0gsMF1TsLR/ET97OkojpXFc=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=OE/Q80ol+mVTJt/+OV7YRVLjSNI+EC5puiJuoXMewuYW5s4D7K8PVFEoE7DgL5jNOo
         q1QUnxwcTTmwDJ0QuQU9HyMK494ebwZmd2c5z5IGiqtIKeWr2GvjN22IsHt1i5V+841I
         g8McMERZ1whxBFmkoT/xzEzaTO3u3QfW1YvljB0I5aGOi5CID+Li6MzxxQklekeevZBe
         XLMAKq+lJI58LHhrV5Ql7VGTuQawDlTfao9AW69IziTpGs+1yKDqmfPFDii4Vw3llJzP
         cwegx1pziGkzYYPPkzovh3Y5n2qBMAemZ5IJdbwe0r5UjkUtHjArMxYkBjAIHGUDT1Lx
         uSQQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=et16iQGk;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by mx.google.com with ESMTPS id 14-20020a63134e000000b005dc4fbfb9acsi6974084pgt.583.2024.03.25.00.30.15
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:30:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id EFCEBCE0B17;
	Mon, 25 Mar 2024 07:30:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EB3EC433F1;
	Mon, 25 Mar 2024 07:30:07 +0000 (UTC)
Message-ID: <3f140e6e-a73b-4c27-a14f-0add8c36dd26@kernel.org>
Date: Mon, 25 Mar 2024 16:30:06 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 07/23] scsi: add a dma_alignment field to
 the host and host template
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Niklas Cassel <cassel@kernel.org>,
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
 Bart Van Assche <bvanassche@acm.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
 linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, megaraidlinux.pdl@broadcom.com,
 mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20240324235448.2039074-1-hch@lst.de>
 <20240324235448.2039074-8-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-8-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=et16iQGk;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as
 permitted sender) smtp.mailfrom=dlemoal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 3/25/24 08:54, Christoph Hellwig wrote:
> Get drivers out of the business of having to call the block layer
> dma alignment limits helpers themselves.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks OK to me.

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/3f140e6e-a73b-4c27-a14f-0add8c36dd26%40kernel.org.
