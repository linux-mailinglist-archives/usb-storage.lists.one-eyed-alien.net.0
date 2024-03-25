Return-Path: <usb-storage+bncBD3JNNMDTMEBBDHOQ6YAMGQE7ZHUQ2Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x645.google.com (mail-pl1-x645.google.com [IPv6:2607:f8b0:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id 4259588B39F
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 23:13:34 +0100 (CET)
Received: by mail-pl1-x645.google.com with SMTP id d9443c01a7336-1e06b4c649dsf11017265ad.0
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 15:13:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711404813; cv=pass;
        d=google.com; s=arc-20160816;
        b=dQ4f20Tlz+bMSQ3G1qGrGxwzTYJXPWGtN+IcGnwyGrafdQ8fZ0myUyIA4OwLEf9Ggj
         VvafuIVsljuiTWC5q86mmcPQrrNgTriUN+ed4Ydo+YXFH+JtTQe3iZBGPUcVGjcTa17s
         0ZhT2BRopHS98nh5vfd/ca3WwaerP6ArHq6Gr6TSVisvxCEjx13Tm3M3orBoe6ahyRCT
         uMF6mmkJQNv8qQAjJGz7L+ErEOzsGIUlNqjlEmIbchZAWvNBXVuSFhPw6wb+prLho5mQ
         X+6RruA04iGJTuK1/GBiKVrZlFVxiHE/+Cphvj9gPMqaf0o7D5wXZPqh8j/LAFer3Fbb
         E2nA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=ogqhQvzrYyHby4Ka1qksN8hkNg3ySwVpHwcQUpQmPI8=;
        fh=g5Hwj6DzuogNUPngclqkUsU6ni3Kb7H4a3GR4SXp8hU=;
        b=VQbs4qhIHSEnZMTzoZGXG6fpMkyf7eHVLhmD+S4V9UNbT+DCTPDmk7WvfCjLwgjLm3
         IwFpeqVcga4WyAXDS7OuUSDC56NKRMmoo9weu0tneDwUw0ngNITHGYRHxx+xq3x1oqUn
         qYiqPmjuvWgF6u4/ZXrXYa7bmfm9yec94kFDt+jLV5/ddP0yn1hHecIdNyyKHZtCmDFp
         sV9SQLbVeVOoXGmbJ3U67vTRzwJbWtmoW6SvGXTx/zmV9lu+0gfrqZ1rywJrnUXqwdc2
         cAQDLdai8wO7OxSQ3x9QVqo60xVr3lMyW6O6DwBYj+c3t8EqijKr8EgQKffiu37Xh/Qd
         CMmg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=acm.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711404813; x=1712009613; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=ogqhQvzrYyHby4Ka1qksN8hkNg3ySwVpHwcQUpQmPI8=;
        b=ebn3xk2xny67+9XPtGSkPdKuXY7AfugqIBKB59jXCP/lUKVQPZuAJbJ++rrLTRfeGT
         sz1wpWqQgeFKcSVK19bdbFN9Ll0Wx7rMcQhiDq1v9T14DyDPLgZ6OzEnY1bsgeEhpHhC
         htAymKA8c7LwGbmQ56IyW1Z86UeuDmcegndbw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711404813; x=1712009613;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ogqhQvzrYyHby4Ka1qksN8hkNg3ySwVpHwcQUpQmPI8=;
        b=OGyWfA+xmjUxhmHkiPu5OfbrmkcM9J79mxi2I4xDe1KrguTzYlK+lzrpjACJGlITpC
         HQk+x5R7yCt+UEJlaQta/9N0pELgIF2BoZLKM+6eB3d1vam+tr8882TBq839/o8F5iOT
         l4LfAA7tABBHPUAtNHjkRnhoajI/8mbyvSJyMx3D034K3rc2Qhd/xBJ2f9aRUKKgLdQA
         P/HA9aTATZLrs7IqdPHTeWODA5rrDSQh0O1MjbDlMNjL1j+1Q0Fzl93npkDamtINb50S
         MV44VShgaa+eOiUJSQoeuC7LyG951YDVmMBPyrl0cAmpKoP1JYImR7tuoNDsRhDYr8C2
         GcdQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUdBiTyVIzE2jD4Akv/l/LjkDJOJgkIbC2cO4WvTRW42TMMoX0j2FPNdBxsfrKodg5MEDO+lOjz32wU6CttWOg4ARXQHS0RFFsm
X-Gm-Message-State: AOJu0YzZ2eRP8JzVAtGulW59xO9un/8Jej2AERBnPmIU+8xH5SHcDOoj
	/qwGziNBx4GJx13F2+3mNmfMf3MRQL4Fo+n3V7SB2dPYrMCkLnphgPIJug8lQXs=
X-Google-Smtp-Source: AGHT+IH4ewhfb2gV7v96O/qbRIAVyHB+8GFm2/CwohamjczcetfZUqdmXb7MIJAcX66TuYdgSIyxVQ==
X-Received: by 2002:a17:903:50b:b0:1db:f23f:676c with SMTP id jn11-20020a170903050b00b001dbf23f676cmr8712701plb.0.1711404812759;
        Mon, 25 Mar 2024 15:13:32 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:234b:b0:1e0:a5e0:c5e1 with SMTP id
 c11-20020a170903234b00b001e0a5e0c5e1ls1371334plh.2.-pod-prod-09-us; Mon, 25
 Mar 2024 15:13:31 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX5sejSxAaCFBQlnAPtVjmnOVf5E5kttATDipJWxa7VEU0oAG7HCFDLvqL/Zl4Zy/s9zlZ+iCJqB6eqFuzTZPPfBzNLrr9CyfBzae0O1IlvVA9vK1M=
X-Received: by 2002:a17:902:c10d:b0:1de:ffbc:8d95 with SMTP id 13-20020a170902c10d00b001deffbc8d95mr6511029pli.67.1711404811304;
        Mon, 25 Mar 2024 15:13:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711404811; cv=none;
        d=google.com; s=arc-20160816;
        b=bf3MV1OBQm7CsCmcQgyBgNzClg3GflEOOYbkipEP9JGJcqSsGkpa7ahKI4u2A2E6xK
         xbGT+B6+wkcX+05KYTkw6givdY3HIPwC9a3BXbGdNhB4NhbEiejjAs5bTZVPr+yNZBef
         UYQzabRHW1z8NCwm2Q4jtfC7i3hzf3e60Z9Usk8/0ChykEkOlxqTw5b3yac4Yxi7XZ/4
         2d/TR4eyST0AxCPlstaC1N6XGHgh/aor16Pyyc2b7dsYkH48idiM76dmN1cqfbI2GBeh
         QumlTctxqzTXKY81iW1kOU0BWB8bJr159fmOjJUoBt4HOysCO27e3T82R+FZGDMSXoIw
         vfqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=yq4DZOZpV+tgfo1VME0SGUbSt682+RvFZTbCx2WgCR4=;
        fh=Ak8fb0BUTMYNtx+M8e07KLyWD1rnKsOINxguz80zeP8=;
        b=qjnCKdMOStbEe0Y2/zMJy2O9VHy+xwwL2pjb1jgHt0g8zfva2OGeYH4dOdcOi8KpVy
         37hO2pUVamffzIAgbqP/02yTBq9Nl7t9XmmP5+pz8wibMwOj2LA8hmRiXCa/0WYqL9Dv
         Wi2F1v6KsP4B5gA9dniWmRgUVD3VbxM36K0hsGvPQu8Roumgxll+ZrRowPv1SIT3eH8h
         epaKdO5ZWau0xAJHunY3tTETlDj/H/ORJQhgqQ5kPk3nDndN7aKv12yO/JcUZ5dzH+mC
         i6tSgXfzrtg8y+iJ0s8YdID6jzsmyQfZdAOyk8K0pznBPYbjWnyseGKaAiVHX9sRo25z
         qKmw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=acm.org
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id im23-20020a170902bb1700b001e03f65f508sor2370965plb.4.2024.03.25.15.13.31
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 25 Mar 2024 15:13:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCV89a2IEQqlUZhAoQMEVhaO8b9MhRG94C5D/2V9hL22qP8gwn2OraRevOxTPQGCt9BmPgUXv9u9gdvJueaNv21VEb53MwO3o/Fh3eGXy5Khor1eRlM=
X-Received: by 2002:a17:902:784e:b0:1df:fda8:e0ea with SMTP id e14-20020a170902784e00b001dffda8e0eamr7291037pln.28.1711404810841;
        Mon, 25 Mar 2024 15:13:30 -0700 (PDT)
Received: from ?IPV6:2620:0:1000:8411:262:e41e:a4dd:81c6? ([2620:0:1000:8411:262:e41e:a4dd:81c6])
        by smtp.gmail.com with ESMTPSA id s19-20020a170902989300b001dd67c8e108sm5195084plp.199.2024.03.25.15.13.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Mar 2024 15:13:29 -0700 (PDT)
Message-ID: <bb3b5924-d266-49f5-944f-5e7ee3d3b5b7@acm.org>
Date: Mon, 25 Mar 2024 15:13:26 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 09/23] scsi: use the atomic queue limits API
 in scsi_add_lun
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
 <20240324235448.2039074-10-hch@lst.de>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20240324235448.2039074-10-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted
 sender) smtp.mailfrom=bart.vanassche@gmail.com;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=acm.org
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
> Switch scsi_add_lun to use the atomic queue limits API to update the
> max_hw_sectors for devices with quirks.

Reviewed-by: Bart Van Assche <bvanassche@acm.org>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/bb3b5924-d266-49f5-944f-5e7ee3d3b5b7%40acm.org.
