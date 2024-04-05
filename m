Return-Path: <usb-storage+bncBDUNBGN3R4KRB6NVX2YAMGQEHQQXV2Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lj1-x246.google.com (mail-lj1-x246.google.com [IPv6:2a00:1450:4864:20::246])
	by mail.lfdr.de (Postfix) with ESMTPS id 475D789955F
	for <lists+usb-storage@lfdr.de>; Fri,  5 Apr 2024 08:32:27 +0200 (CEST)
Received: by mail-lj1-x246.google.com with SMTP id 38308e7fff4ca-2d83d5ea8dfsf15830911fa.0
        for <lists+usb-storage@lfdr.de>; Thu, 04 Apr 2024 23:32:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712298746; cv=pass;
        d=google.com; s=arc-20160816;
        b=LySvsDNH1AETcLqBl2PLep9zRl4TJzPl+jkq0DkqY8y4JdM7TJH/wsdWls0sFGNhzW
         B6pC5HNBesw74mysqFhQd0u8WxwtUkCYHzv1jcm5l0rSNr9fupIAm8iEI+hbmgU3Q0mi
         1U/4gxTWwn5w4jzI+Kda8/svCy86zdr7e/e5PoUg2cH/aKQaBzfYGb/BnrfWiZ7TD90G
         bJ1aIDsEEZU7WeCinhvv9sRAZL/pBXae1VGuWYNp1hmEzff/fLKndY7LnucYkWahJGQD
         JD71CwHhJTV20HxmDztGhMhgRZblOe2e0o/luJJFIBbp0R97O+z4DZOUO8ra5GJqu8cf
         n92A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=40F86EI9OjDrWrndHfrZI3FerQM3i1SGtNMT0FQpilY=;
        fh=VfzByMUpGK1H0unQe2QLD+mafUgbRakyNQ0WFY1TGmg=;
        b=yjN/jUoJkOKPebDnKAsQ/PbVx8VUOgnW4KYAwMexa09/sR3GzJ00GMVunFx0jgmkbD
         IW4U9CeLKG28zvJVaq4ojNgLYrQMVGM8+2Z52ABg/VnNcbbaP3nchcJJqKEhP6NGWiLF
         C7H2KwFn2L1o09zd1DhcnCtGd8z19kMqUYUL3oWRCW5Yjfqn7xYXE1xkk/sph7Py//H2
         zZw3ty6lKHkF/vicdWQw7odTo9N+GTA5wHZpZvR0x2XsqjJUaSuLBpE3yXdVII4FfUB+
         PsKARGaZRBq/k/PGzfkfAEkUXYFqx/39OgdH1HnPYGsCN6hc087xbfu2cppw/iZBm7wn
         o36Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712298746; x=1712903546; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=40F86EI9OjDrWrndHfrZI3FerQM3i1SGtNMT0FQpilY=;
        b=B1yVlZRpPoDEm6h7svuysI3tpbfcvmeeDwBNhUlZvgfk4ZCRo8I1uw2fdgmb7jHWHY
         iSil5/rcRLLTEryqs5sO68G/70dQlSmEQbEXIkTl3E7u74WjH0rIGWlSiLix1YhXI8W0
         7o8EH3tuXWGP/RJBiV81kpzetriXn/FWgBols=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712298746; x=1712903546;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=40F86EI9OjDrWrndHfrZI3FerQM3i1SGtNMT0FQpilY=;
        b=JNBw4fB28KkeD+0JAk1PlivVYhVcBfm2lTH00XHEuN/iL5+QHhwTi4huAV+rmqYBeC
         91qWuarioDJQo6ZPdE+EfeSQw9hTRqx9JItFf5Qm0Mx51eaZV+TvWDHIiAG+7icZLsBI
         jfi8KKjneXh4jVMZ8BXICy2UC/Ju3AL3Jf0c0OWMIkWYEjl+nnH100+eeZtpFwu49m7T
         szLlREgtKa1KeKcMMrJs3MBeBiGJvXj3Ya93Z6yn2bYyXYKTem/dzjIOdKJa5XYZvF+2
         8rLMiUyCBPa0fOgnluz1b3GRaiGjJbBur4CU8zUWN5cwXQhv7zYS8V7paMZmlGzJaOik
         a+mg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUXMfS4dbZJ9FVRHvUm4s5TO2taNQZIyII64dNNZe0iC/MoWgLi6x4IXBo9NSXl/UfFb2O6tSmwsEGV/KuHUfXS07Zh8BJnMC7I
X-Gm-Message-State: AOJu0Yy8FUt0BZjoQWthC2lKfOPCiN3MPfBTmJ38oij7BfjHiCxf7pf8
	e4lVkGiFk0uwgiTxWPHsClERLPU7qj6xkWw3wyfn67C7YF1hg0kJZcJ+zPgzxB4=
X-Google-Smtp-Source: AGHT+IGXnMMV2UJO4XQsvt86t/nObDp0DE1nm5Dtt9vs1c/EYhla37FV+LyLZfdfaBeH9c022XQLBQ==
X-Received: by 2002:ac2:485a:0:b0:516:d14a:9697 with SMTP id 26-20020ac2485a000000b00516d14a9697mr288241lfy.53.1712298746223;
        Thu, 04 Apr 2024 23:32:26 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:600c:4fc3:b0:416:2ef3:43e with SMTP id
 o3-20020a05600c4fc300b004162ef3043els126919wmq.0.-pod-prod-04-eu; Thu, 04 Apr
 2024 23:32:24 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVqxLjiLeInEkeX5xUV0eyQjwpwtr6uZTO+r3+kOFwv6L9VAm8iANYwyE3UqZpiplROYy2DlrPhFxBfyOyBkRkTH7jWTV5Z3HqyE/TceBkDQLQ1KD8=
X-Received: by 2002:a05:6000:188a:b0:343:8d1b:b121 with SMTP id a10-20020a056000188a00b003438d1bb121mr522790wri.48.1712298744047;
        Thu, 04 Apr 2024 23:32:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712298744; cv=none;
        d=google.com; s=arc-20160816;
        b=wHxFXChkVQ09vT6ew5tSNdxj2cTpdRwB1CubkuxMj88hko58nTj4Yodnhe0cNaEXH/
         wixWb4m7W2cupAFIZzcT79QmCqR+UYHrDPHBClB4ByLt4gxol9QFu4v2PYnPFVP2dWC7
         v+S/9n2ADvhO0Q5EnYAh5mShbusTVIfnTNH0LwP58Jpl88L20PeaHlg1wCNtTjQJLwhm
         Xtr1BUaNlxFFVbTFnoTG6fygTKkPOFaNxkMyKyHgeQbR9wIk5Kx+m47b5dS7Wppo0tZU
         jTZWHwGcqHhoTSDAEyd4ux4l+OKCC8Me4gBK4hamsUqwMoJ1yhhgoQkzimDHC3Q9qigx
         d/gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=dCGIzkI2WWywAAD+bVC9mLePlWvKEyEDzpXJWUUjq34=;
        fh=3VKlqmzP7SHoeH1936VRPBQxfTr1xbu2brwNQBQLRVs=;
        b=Q3NiF7An5l9qjCQ9i9kSnsXHAbEYKV2BcfadbAKIEoC5cMq1K+vt4d/Nzmmuqt3M5D
         Cqlzx9S99FYz8KSGi4W22bYcLH3smOFIcJ/Iyz8potEoe7hILsj01KecHS3wC8Cx+03T
         xxLi6cqpZg0hLcx91MoHYF/oaFHO/HW4pg61iGIbjG1p2PZkhddX9sJqc8FnAuF3VRnI
         WGwJE9jhKRY1fUx9dFbnkDwhMsm7Y+6j1x6C3RhfQP3Fw59aA/3PDpTb8fX6OwlB4FNS
         ogkJxfYR14pEUdOqBDwHyArp+5bCclBJms5iJXWJ9bH6azo8u4KMUJ3S9lL9kemk3F43
         47PA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id l17-20020a056000023100b00343dfa6c383si527985wrz.112.2024.04.04.23.32.23
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Apr 2024 23:32:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 5E9A268D07; Fri,  5 Apr 2024 08:32:20 +0200 (CEST)
Date: Fri, 5 Apr 2024 08:32:20 +0200
From: Christoph Hellwig <hch@lst.de>
To: Bart Van Assche <bvanassche@acm.org>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
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
Subject: [usb-storage] Re: [PATCH 01/23] block: add a helper to cancel atomic
 queue limit updates
Message-ID: <20240405063220.GA3480@lst.de>
References: <20240402130645.653507-1-hch@lst.de> <20240402130645.653507-2-hch@lst.de> <bb458d47-5b5a-43c0-8cae-211b82b16309@acm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <bb458d47-5b5a-43c0-8cae-211b82b16309@acm.org>
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

On Thu, Apr 04, 2024 at 09:53:03AM -0700, Bart Van Assche wrote:
> At least in scsi_add_lun() there are multiple statements between
> queue_limits_start_update(), queue_limits_cancel_update() and
> queue_limits_commit_update(). Has it been considered to use __cleanup()
> to invoke queue_limits_commit_update() when the end of the current scope
> is reached? I think that would make code that uses the
> queue_limits_*_update() functions easier to verify. For an example of
> how to use the __cleanup() macro, see e.g. the __free() and
> no_free_ptr() macros in <linux/cleanup.h>.

It has been considered and rejected as this syntactic sugar might make
teenagers with attention deficit syndrome happy, but otherwise just
horribly obfuscates the code.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240405063220.GA3480%40lst.de.
