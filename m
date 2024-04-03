Return-Path: <usb-storage+bncBCHZVHVFVMARBWMDWSYAMGQED5SD6QY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x547.google.com (mail-ed1-x547.google.com [IPv6:2a00:1450:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 8909A8965C6
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 09:14:34 +0200 (CEST)
Received: by mail-ed1-x547.google.com with SMTP id 4fb4d7f45d1cf-56c1ac93679sf4289041a12.2
        for <lists+usb-storage@lfdr.de>; Wed, 03 Apr 2024 00:14:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712128474; cv=pass;
        d=google.com; s=arc-20160816;
        b=Eiekg2hIjQzcOQahKaAJXzLkfXtQCTzm+IBNNUKILODYxTOdG3OAY03/iT6TFPtX3n
         VwZEVM3uKqYw6tov3jWYu11pZHwltTmdeFzclQXvN6dPNs8Ngqch0/G2waeBi01TY+8x
         IkT0e+nSPsvNlLQohlrDvWuQ6F06/VYIhhl4m3dCsgRmGlskO7ibKaXyjzPCiQ47/fmu
         S0ERhW6hRfUU9HU0OJ2gd6w8PtxH9Fr+TG3xVSTZx9FLNgilVEpBTAkNIyQAm5Wb4awV
         Jgvxc/zaQuhns2qUNzh4Wk2Hcm7FwpUfgpjziSROJAztRJnLfcdsPRnZR52lpHV3P/Xy
         2Sqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=ZQp7LwtOwkuvsm6Z/F7d71uWhGxvdAzJgpisqLAYoHw=;
        fh=IevECAzZE4tKdFycVKpR+PXYJooB0BAXDpRzryNI1Ho=;
        b=yLmCV58PRnxAna5RdN+Q8S8dEl+kjWFjUF1NytZxmpxvPhBPGatUVe6oqWmkOZmtIc
         tG2LDYyVuKd72HTqHtoB9wjlvoIiowEcoyvnQ5oz5WFc97UUhnRjt2FBuzrV3r3yyNud
         CXrvz31SrCy7jpubMbhz6Pvfai2IkXptP+Nou6N1Xm0y0a006zX9N8XCKMuPvV+5h6b7
         14Dp4jgmno4aoU+NcTMxMajn/QruIasFIJI/rjO2nPOH/Ccj1TgA60uIKHXgG6UCsA6L
         TlwFknTZhYDPL+20i5gArk70SeftncFUQSgpLXN0LWVWjJoIc55jwHOj+lfls03BQjXQ
         9KBg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b="M5oo/amn";
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712128474; x=1712733274; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=ZQp7LwtOwkuvsm6Z/F7d71uWhGxvdAzJgpisqLAYoHw=;
        b=jfLPiW7lg820yd/M5wnrNAAPpbiZKaa1DnVeAInfX/29eYSnKTSpT8baPvKxant+Kt
         7la3PR1laMpFnhj3VDOt+hMFWSnENCKyF7xiA8roDuPVR619vdb1ULd3AuPED2SftHQ+
         nx4L4Xq6AXd/kvBkay5Qf5SxyKulfRdCfrw8w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712128474; x=1712733274;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZQp7LwtOwkuvsm6Z/F7d71uWhGxvdAzJgpisqLAYoHw=;
        b=w8lezIhO48aZ5y9/3Uu59ywq6aBffm5Jgv0/WbXWGCqs2gFS9SYjEAaTuDtc6/NX93
         yba0EzCt4DHC1PmPJqk809QV4GVB4va6aLheyHbZ2+nrBHcwF/ugchlucbRmRK8sKCKN
         rUcrN4dwMI2+OARJJ+Jx20Lcn7pWeD7htve51aSWRbvporuADeLB0bHx3MEwQJFXpsxH
         mwqYBvYl0TqDAgKV8wnxEJbHcpGmy3qB4cczLkyT5/21iPERaX+l/gVkzncv0xfe9QsD
         IkZLPEGoCZwszuFepajqn19l366fOVmUcfPR+Wk+oPYwRNAkikYQzDELq6FPLt5Y0Mxo
         HYeQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXTHvgQ3t5hqMLk4/OpmrqXNp6uAe6IXPRJHM+Dz8cahuFchy/kv+2YoqNbwxLpn1uKVMTVC0g2W2vuqHBIa23P9SCTvcdBlCbL
X-Gm-Message-State: AOJu0YzSKzJ4FLfou72SeNaektGXbGB9aEQ5at8+f+xau7QS/SllIcJY
	9fuaoLISCIv3ryrxgyN5vqViX6iRGnxFAHRyiDu9Eq4W4K4xIYt6hVjJSEOodAA=
X-Google-Smtp-Source: AGHT+IHyu/BBeohboxgd7l7bRPYxuwWEJYR11GsPfm1HDvRTfXszSOg8ojDgougLZbJM7wAbtHGR7w==
X-Received: by 2002:a05:6402:3547:b0:567:1221:d486 with SMTP id f7-20020a056402354700b005671221d486mr11712607edd.33.1712128474117;
        Wed, 03 Apr 2024 00:14:34 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:4311:b0:56d:e746:ab95 with SMTP id
 m17-20020a056402431100b0056de746ab95ls875534edc.2.-pod-prod-04-eu; Wed, 03
 Apr 2024 00:14:32 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWiRaiDyOpXcc2FuOfpmAdDwmgn1lFK5DGM/iXwJ8btDXlSs608WgIB8oQDh+XVWPynOumsCFuQgZs2Fps8JUMzl9P+uT9nD2KHG09Xz42HXQgoIzU=
X-Received: by 2002:a17:907:3ea2:b0:a4e:5672:440 with SMTP id hs34-20020a1709073ea200b00a4e56720440mr8079122ejc.21.1712128472346;
        Wed, 03 Apr 2024 00:14:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712128472; cv=none;
        d=google.com; s=arc-20160816;
        b=U9i4Vhji7R+4PCbACpwulGkZU2pwtQ+ku2WRUX1L2iwHo1bUSOaUXI3ChJdvkkx5iF
         UybploCfkfNkoM3BKi15ywHJTT2bNjJbUIFIBBGGuOsymTgkrivzqbKHQppUTSssbIWj
         cd8Jc+sTOby37fcY1aYGNWmNQpeNLsjx03Ek62fjnwcTjfY2RJBDs9D3ZE4hibORrTkt
         lEEZRu2ha5x2GzCh4p6c5QI58dRrgtQLBrJwgkNNLzXwBNvoQuK1kNqZvhIlZm99jiYk
         nHEs/6skrc5nDk/35XVwGJwLj8egNj/P2JhIxonDNTgi+VggHoqnKXxQoEp5qKeM2ldJ
         hNTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=81psEsG/FJdss5nIv7GWh4B+z1Yl0LEeSu0huQH0pK8=;
        fh=9aauSyI5eQk5b4s5O16fFO5a6x/LXiZqBjzkmnuA6As=;
        b=jjSVaCiBAGu3/Ldc1I7bi/75E1gYOhuENNtVBb2HBjr51N3Doah+olwoizj/e272wy
         RwqkyHFd+V6vYOrr3DpUmGda8ZrwTxzSxj2sZ3NgcpqoLHnrPOCF2BRdd73yabMP/bnS
         uEMcaNHSvDJYaVgQ61b7Kv8pyxOff3uyri/HGSaInXjv0T9jRLEOd7rz17nNK71D5UZO
         KhhwgatOcMEiDgzxeN3uReyKLhdl3JZbodBzJE6wlGR0NhB2ZGgBTOKRFpZWSVmFhyPR
         acrexrrIvNAwn9LaSkA6mAPq+TV6L94buOH+rMs5DtLuaXLVduK1VgieQXptQ1IhaBXc
         DMCQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b="M5oo/amn";
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [2a07:de40:b251:101:10:150:64:1])
        by mx.google.com with ESMTPS id he7-20020a1709073d8700b00a46bda1dbedsi6744737ejc.557.2024.04.03.00.14.32
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 00:14:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1 as permitted sender) client-ip=2a07:de40:b251:101:10:150:64:1;
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:98])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id E39C035041;
	Wed,  3 Apr 2024 07:14:31 +0000 (UTC)
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id 2A2C513357;
	Wed,  3 Apr 2024 07:14:28 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap2.dmz-prg2.suse.org with ESMTPSA
	id WGOOENQBDWYlEQAAn2gu4w
	(envelope-from <hare@suse.de>); Wed, 03 Apr 2024 07:14:28 +0000
Message-ID: <1d9925be-bb18-4a8c-8bdd-75840a1a048c@suse.de>
Date: Wed, 3 Apr 2024 09:14:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 19/23] pata_macio: switch to using ->device_configure
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
 Bart Van Assche <bvanassche@acm.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
 linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
 megaraidlinux.pdl@broadcom.com, mpi3mr-linuxdrv.pdl@broadcom.com,
 linux-samsung-soc@vger.kernel.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
References: <20240402130645.653507-1-hch@lst.de>
 <20240402130645.653507-20-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20240402130645.653507-20-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Spam-Score: 1.93
X-Spam-Flag: NO
X-Spamd-Bar: +
X-Spamd-Result: default: False [1.93 / 50.00];
	 ARC_NA(0.00)[];
	 RCVD_VIA_SMTP_AUTH(0.00)[];
	 XM_UA_NO_VERSION(0.01)[];
	 FROM_HAS_DN(0.00)[];
	 TO_DN_SOME(0.00)[];
	 TO_MATCH_ENVRCPT_ALL(0.00)[];
	 BAYES_HAM(-0.90)[86.04%];
	 MIME_GOOD(-0.10)[text/plain];
	 RCVD_COUNT_THREE(0.00)[3];
	 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	 MX_GOOD(-0.01)[];
	 NEURAL_HAM_SHORT(-0.20)[-1.000];
	 RCPT_COUNT_TWELVE(0.00)[42];
	 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email,lst.de:email];
	 NEURAL_SPAM_LONG(0.94)[0.267];
	 FUZZY_BLOCKED(0.00)[rspamd.com];
	 FROM_EQ_ENVFROM(0.00)[];
	 R_DKIM_NA(2.20)[];
	 MIME_TRACE(0.00)[0:+];
	 RCVD_TLS_ALL(0.00)[];
	 MID_RHS_MATCH_FROM(0.00)[]
X-Spam-Level: *
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Rspamd-Queue-Id: E39C035041
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b="M5oo/amn";
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates
 2a07:de40:b251:101:10:150:64:1 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
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

On 4/2/24 15:06, Christoph Hellwig wrote:
> Switch to the ->device_configure method instead of ->slave_configure
> and update the block limits on the passed in queue_limits instead
> of using the per-limit accessors.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Acked-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>   drivers/ata/pata_macio.c | 9 +++++----
>   1 file changed, 5 insertions(+), 4 deletions(-)
>=20
Reviewed-by: Hannes Reinecke <hare@suse.de>

Cheers,

Hannes
--=20
Dr. Hannes Reinecke                  Kernel Storage Architect
hare@suse.de                                +49 911 74053 688
SUSE Software Solutions GmbH, Frankenstr. 146, 90461 N=C3=BCrnberg
HRB 36809 (AG N=C3=BCrnberg), GF: I. Totev, A. McDonald, W. Knoblich

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/1d9925be-bb18-4a8c-8bdd-75840a1a048c=
%40suse.de.
